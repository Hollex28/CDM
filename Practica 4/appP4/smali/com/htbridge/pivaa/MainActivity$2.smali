.class Lcom/htbridge/pivaa/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htbridge/pivaa/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htbridge/pivaa/MainActivity;


# direct methods
.method constructor <init>(Lcom/htbridge/pivaa/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/htbridge/pivaa/MainActivity;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/htbridge/pivaa/MainActivity$2;->this$0:Lcom/htbridge/pivaa/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htbridge/pivaa/MainActivity$2;->this$0:Lcom/htbridge/pivaa/MainActivity;

    invoke-static {v0}, Lcom/htbridge/pivaa/MainActivity;->access$000(Lcom/htbridge/pivaa/MainActivity;)V

    .line 94
    return-void
.end method
