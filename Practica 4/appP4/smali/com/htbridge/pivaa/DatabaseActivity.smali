.class public Lcom/htbridge/pivaa/DatabaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "DatabaseActivity.java"


# instance fields
.field db:Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v4, 0x7f0a001f

    invoke-virtual {p0, v4}, Lcom/htbridge/pivaa/DatabaseActivity;->setContentView(I)V

    .line 42
    const v4, 0x7f0800e9

    invoke-virtual {p0, v4}, Lcom/htbridge/pivaa/DatabaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar;

    .line 43
    .local v3, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v3}, Lcom/htbridge/pivaa/DatabaseActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 50
    new-instance v0, Lcom/htbridge/pivaa/Configuration;

    invoke-direct {v0}, Lcom/htbridge/pivaa/Configuration;-><init>()V

    .line 51
    .local v0, "config":Lcom/htbridge/pivaa/Configuration;
    new-instance v4, Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;

    invoke-direct {v4, p0}, Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htbridge/pivaa/DatabaseActivity;->db:Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;

    .line 52
    iget-object v4, p0, Lcom/htbridge/pivaa/DatabaseActivity;->db:Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;

    invoke-virtual {v4}, Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;->initDatabaseOuter()V

    .line 53
    iget-object v4, p0, Lcom/htbridge/pivaa/DatabaseActivity;->db:Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;

    new-instance v5, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;

    iget-object v6, v0, Lcom/htbridge/pivaa/Configuration;->default_title_database_item:Ljava/lang/String;

    iget-object v7, v0, Lcom/htbridge/pivaa/Configuration;->default_author_database_item:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;->addRecord(Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;)V

    .line 55
    invoke-virtual {p0}, Lcom/htbridge/pivaa/DatabaseActivity;->renderListView()V

    .line 59
    const v4, 0x7f080038

    invoke-virtual {p0, v4}, Lcom/htbridge/pivaa/DatabaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 60
    .local v1, "mDatabaseInsertButton":Landroid/widget/Button;
    new-instance v4, Lcom/htbridge/pivaa/DatabaseActivity$1;

    invoke-direct {v4, p0}, Lcom/htbridge/pivaa/DatabaseActivity$1;-><init>(Lcom/htbridge/pivaa/DatabaseActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v4, 0x7f08003b

    invoke-virtual {p0, v4}, Lcom/htbridge/pivaa/DatabaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 81
    .local v2, "mDatabaseRawSQLButton":Landroid/widget/Button;
    new-instance v4, Lcom/htbridge/pivaa/DatabaseActivity$2;

    invoke-direct {v4, p0}, Lcom/htbridge/pivaa/DatabaseActivity$2;-><init>(Lcom/htbridge/pivaa/DatabaseActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/htbridge/pivaa/DatabaseActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 33
    new-instance v0, Lcom/htbridge/pivaa/handlers/MenuHandler;

    invoke-direct {v0}, Lcom/htbridge/pivaa/handlers/MenuHandler;-><init>()V

    .line 34
    .local v0, "menuHandler":Lcom/htbridge/pivaa/handlers/MenuHandler;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/htbridge/pivaa/handlers/MenuHandler;->route(Landroid/app/Activity;I)Z

    move-result v1

    return v1
.end method

.method public renderListView()V
    .locals 5

    .prologue
    .line 114
    iget-object v3, p0, Lcom/htbridge/pivaa/DatabaseActivity;->db:Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;

    invoke-virtual {v3}, Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;->getAllRecords()Ljava/util/ArrayList;

    move-result-object v1

    .line 115
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;>;"
    new-instance v0, Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter;

    invoke-virtual {p0}, Lcom/htbridge/pivaa/DatabaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/htbridge/pivaa/DatabaseActivity;->db:Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;

    invoke-direct {v0, v1, v3, v4, p0}, Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;Lcom/htbridge/pivaa/DatabaseActivity;)V

    .line 117
    .local v0, "adapter":Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter;
    const v3, 0x7f08008b

    invoke-virtual {p0, v3}, Lcom/htbridge/pivaa/DatabaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 118
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    return-void
.end method
