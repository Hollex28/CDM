.class public Lcom/htbridge/pivaa/SerializeActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SerializeActivity.java"


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
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v4, 0x7f0a0023

    invoke-virtual {p0, v4}, Lcom/htbridge/pivaa/SerializeActivity;->setContentView(I)V

    .line 42
    const v4, 0x7f0800e9

    invoke-virtual {p0, v4}, Lcom/htbridge/pivaa/SerializeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar;

    .line 43
    .local v3, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v3}, Lcom/htbridge/pivaa/SerializeActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/htbridge/pivaa/SerializeActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/serializable.dat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "serializableFileLocation":Ljava/lang/String;
    const v4, 0x7f08003d

    invoke-virtual {p0, v4}, Lcom/htbridge/pivaa/SerializeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 50
    .local v1, "mSaveSerializeButton":Landroid/widget/Button;
    new-instance v4, Lcom/htbridge/pivaa/SerializeActivity$1;

    invoke-direct {v4, p0, v2}, Lcom/htbridge/pivaa/SerializeActivity$1;-><init>(Lcom/htbridge/pivaa/SerializeActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v4, 0x7f08003a

    invoke-virtual {p0, v4}, Lcom/htbridge/pivaa/SerializeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 66
    .local v0, "mLoadSerializeButton":Landroid/widget/Button;
    new-instance v4, Lcom/htbridge/pivaa/SerializeActivity$2;

    invoke-direct {v4, p0, v2}, Lcom/htbridge/pivaa/SerializeActivity$2;-><init>(Lcom/htbridge/pivaa/SerializeActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/htbridge/pivaa/SerializeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 32
    new-instance v0, Lcom/htbridge/pivaa/handlers/MenuHandler;

    invoke-direct {v0}, Lcom/htbridge/pivaa/handlers/MenuHandler;-><init>()V

    .line 33
    .local v0, "menuHandler":Lcom/htbridge/pivaa/handlers/MenuHandler;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/htbridge/pivaa/handlers/MenuHandler;->route(Landroid/app/Activity;I)Z

    move-result v1

    return v1
.end method
