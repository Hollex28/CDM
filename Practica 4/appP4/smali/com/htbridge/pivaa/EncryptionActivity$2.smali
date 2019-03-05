.class Lcom/htbridge/pivaa/EncryptionActivity$2;
.super Ljava/lang/Object;
.source "EncryptionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htbridge/pivaa/EncryptionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htbridge/pivaa/EncryptionActivity;


# direct methods
.method constructor <init>(Lcom/htbridge/pivaa/EncryptionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/htbridge/pivaa/EncryptionActivity;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htbridge/pivaa/EncryptionActivity$2;->this$0:Lcom/htbridge/pivaa/EncryptionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 67
    const-string/jumbo v2, "htbridge"

    const-string/jumbo v3, "Clicked rng button"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v2, p0, Lcom/htbridge/pivaa/EncryptionActivity$2;->this$0:Lcom/htbridge/pivaa/EncryptionActivity;

    const v3, 0x7f0800b0

    invoke-virtual {v2, v3}, Lcom/htbridge/pivaa/EncryptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 71
    .local v0, "mRNGResultView":Landroid/widget/EditText;
    invoke-static {}, Lcom/htbridge/pivaa/handlers/Encryption;->rng()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "rngResult":Ljava/lang/String;
    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 74
    return-void
.end method
