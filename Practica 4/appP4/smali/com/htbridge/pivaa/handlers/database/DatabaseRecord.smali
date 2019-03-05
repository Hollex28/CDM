.class public Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;
.super Ljava/lang/Object;
.source "DatabaseRecord.java"


# instance fields
.field private author:Ljava/lang/String;

.field private config:Lcom/htbridge/pivaa/Configuration;

.field private id:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/htbridge/pivaa/Configuration;

    invoke-direct {v0}, Lcom/htbridge/pivaa/Configuration;-><init>()V

    iput-object v0, p0, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;->config:Lcom/htbridge/pivaa/Configuration;

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "author"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/htbridge/pivaa/Configuration;

    invoke-direct {v0}, Lcom/htbridge/pivaa/Configuration;-><init>()V

    iput-object v0, p0, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;->config:Lcom/htbridge/pivaa/Configuration;

    .line 18
    iput-object p1, p0, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;->title:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;->author:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;->id:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 2
    .param p1, "author"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;->config:Lcom/htbridge/pivaa/Configuration;

    iget-object p1, v0, Lcom/htbridge/pivaa/Configuration;->default_author_database_item:Ljava/lang/String;

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;->author:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;->id:I

    .line 28
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;->config:Lcom/htbridge/pivaa/Configuration;

    iget-object p1, v0, Lcom/htbridge/pivaa/Configuration;->default_title_database_item:Ljava/lang/String;

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;->title:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Record [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", author="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htbridge/pivaa/handlers/database/DatabaseRecord;->author:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
