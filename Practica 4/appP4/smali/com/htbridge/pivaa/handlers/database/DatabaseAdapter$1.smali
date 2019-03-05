.class Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter$1;
.super Ljava/lang/Object;
.source "DatabaseAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter;

.field final synthetic val$dataModel:Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;


# direct methods
.method constructor <init>(Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter;Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter$1;->this$0:Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter;

    iput-object p2, p0, Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter$1;->val$dataModel:Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 92
    const-string/jumbo v0, "htbridge"

    const-string/jumbo v1, "delete button clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter$1;->this$0:Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter;

    iget-object v0, v0, Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter;->db:Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;

    iget-object v1, p0, Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter$1;->val$dataModel:Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;

    invoke-virtual {v0, v1}, Lcom/htbridge/pivaa/handlers/database/DatabaseHelper;->deleteRecord(Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;)V

    .line 94
    iget-object v0, p0, Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter$1;->this$0:Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter;

    iget-object v0, v0, Lcom/htbridge/pivaa/handlers/database/DatabaseAdapter;->activityRef:Lcom/htbridge/pivaa/DatabaseActivity;

    invoke-virtual {v0}, Lcom/htbridge/pivaa/DatabaseActivity;->renderListView()V

    .line 95
    return-void
.end method
