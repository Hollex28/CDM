.class public Lcom/htbridge/pivaa/LoadCodeActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "LoadCodeActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v2, 0x7f0a0021

    invoke-virtual {p0, v2}, Lcom/htbridge/pivaa/LoadCodeActivity;->setContentView(I)V

    .line 44
    const v2, 0x7f0800e9

    invoke-virtual {p0, v2}, Lcom/htbridge/pivaa/LoadCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    .line 45
    .local v1, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v1}, Lcom/htbridge/pivaa/LoadCodeActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 48
    const v2, 0x7f080039

    invoke-virtual {p0, v2}, Lcom/htbridge/pivaa/LoadCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 49
    .local v0, "mLoadcodeButton":Landroid/widget/Button;
    new-instance v2, Lcom/htbridge/pivaa/LoadCodeActivity$1;

    invoke-direct {v2, p0}, Lcom/htbridge/pivaa/LoadCodeActivity$1;-><init>(Lcom/htbridge/pivaa/LoadCodeActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/htbridge/pivaa/LoadCodeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 35
    new-instance v0, Lcom/htbridge/pivaa/handlers/MenuHandler;

    invoke-direct {v0}, Lcom/htbridge/pivaa/handlers/MenuHandler;-><init>()V

    .line 36
    .local v0, "menuHandler":Lcom/htbridge/pivaa/handlers/MenuHandler;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/htbridge/pivaa/handlers/MenuHandler;->route(Landroid/app/Activity;I)Z

    move-result v1

    return v1
.end method
