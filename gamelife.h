#ifndef GAMELIFE_H
#define GAMELIFE_H

using namespace std;

class GameLife{

public :

    GameLife();

    void initialisation();
    void load(vector<vector<int>> grid);
    vector<int> grid() const;

    // On utilisera : std::vector<std::vector<int>> neighbours;
    // pour les 8 déplacements {{-1, -1}, {-1,0}, etc....
    void nbAlivedNeighbours(int i, int j);
    void changeStatusOfCell(int i, int j);
    void play();
    void reversePlay();
    void setNewDimensions(int nbLignes, int nbColumns);

private :
    int m_nbLines;
    int m_nbColumns;
    vector<vector<int>> m_grid;
    vector<vector<int>> m_history; // for reversePlay §§!!!!!!!!!!!!!!!! vector en plus
};

#endif // GAMELIFE_H
