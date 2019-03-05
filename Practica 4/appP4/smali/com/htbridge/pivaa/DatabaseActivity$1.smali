.class Lcom/htbridge/pivaa/DatabaseActivity$1;
.super Ljava/lang/Object;
.source "DatabaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htbridge/pivaa/DatabaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htbridge/pivaa/DatabaseActivity;


# direct methods
.method constructor <init>(Lcom/htbridge/pivaa/DatabaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/htbridge/pivaa/DatabaseActivity;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/htbridge/pivaa/DatabaseActivity$1;->this$0:Lcom/htbridge/pivaa/DatabaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v4, p0, Lcom/htbridge/pivaa/DatabaseActivity$1;->this$0:Lcom/htbridge/pivaa/DatabaseActivity;

    const v5, 0x7f0800e6

    invoke-virtual {v4, v5}, Lcom/htbridge/pivaa/DatabaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 65
    .local v2, "mTitleDatabaseView":Landroid/widget/EditText;
    iget-object v4, p0, Lcom/htbridge/pivaa/DatabaseActivity$1;->this$0:Lcom/htbridge/pivaa/DatabaseActivity;

    const v5, 0x7f08002a

    invoke-virtual {v4, v5}, Lcom/htbridge/pivaa/DatabaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 68
    .local v1, "mAuthorDatabaseView":Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "title":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "author":Ljava/lang/String;
    iget-object v4, p0, Lcom/htbridge/pivaa/DatabaseActivity$1;->this$0:Lcom/htbridge/pivaa/DatabaseActivity;

    iget-object v4, v4, Lcom/htbridge/pivaa/DatabaseActivity;->db:Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;

    new-instance v5, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;

    invoke-direct {v5, v3, v0}, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;->addRecord(Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;)V

    .line 73
    iget-object v4, p0, Lcom/htbridge/pivaa/DatabaseActivity$1;->this$0:Lcom/htbridge/pivaa/DatabaseActivity;

    invoke-virtual {v4}, Lcom/htbridge/pivaa/DatabaseActivity;->renderListView()V

    .line 74
    return-void
.end method
