.class Lcom/htbridge/pivaa/DatabaseActivity$2;
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
    .line 81
    iput-object p1, p0, Lcom/htbridge/pivaa/DatabaseActivity$2;->this$0:Lcom/htbridge/pivaa/DatabaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 85
    iget-object v4, p0, Lcom/htbridge/pivaa/DatabaseActivity$2;->this$0:Lcom/htbridge/pivaa/DatabaseActivity;

    const v5, 0x7f0800ac

    invoke-virtual {v4, v5}, Lcom/htbridge/pivaa/DatabaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 86
    .local v1, "mTitleDatabaseView":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "rawSQLText":Ljava/lang/String;
    iget-object v4, p0, Lcom/htbridge/pivaa/DatabaseActivity$2;->this$0:Lcom/htbridge/pivaa/DatabaseActivity;

    iget-object v4, v4, Lcom/htbridge/pivaa/DatabaseActivity;->db:Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;

    invoke-virtual {v4, v2}, Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;->rawSQLQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "result":Ljava/lang/String;
    const-string/jumbo v4, "htbridge"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v4, p0, Lcom/htbridge/pivaa/DatabaseActivity$2;->this$0:Lcom/htbridge/pivaa/DatabaseActivity;

    const v5, 0x7f08009d

    invoke-virtual {v4, v5}, Lcom/htbridge/pivaa/DatabaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    .local v0, "mOutputDatabaseView":Landroid/widget/TextView;
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 94
    iget-object v4, p0, Lcom/htbridge/pivaa/DatabaseActivity$2;->this$0:Lcom/htbridge/pivaa/DatabaseActivity;

    invoke-virtual {v4}, Lcom/htbridge/pivaa/DatabaseActivity;->renderListView()V

    .line 95
    return-void
.end method
