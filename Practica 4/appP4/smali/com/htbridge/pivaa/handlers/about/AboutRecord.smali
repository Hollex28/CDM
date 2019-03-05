.class public Lcom/htbridge/pivaa/handlers/about/AboutRecord;
.super Ljava/lang/Object;
.source "AboutRecord.java"


# instance fields
.field private config:Lcom/htbridge/pivaa/Configuration;

.field private description:Ljava/lang/String;

.field private id:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/htbridge/pivaa/Configuration;

    invoke-direct {v0}, Lcom/htbridge/pivaa/Configuration;-><init>()V

    iput-object v0, p0, Lcom/htbridge/pivaa/handlers/about/AboutRecord;->config:Lcom/htbridge/pivaa/Configuration;

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/htbridge/pivaa/Configuration;

    invoke-direct {v0}, Lcom/htbridge/pivaa/Configuration;-><init>()V

    iput-object v0, p0, Lcom/htbridge/pivaa/handlers/about/AboutRecord;->config:Lcom/htbridge/pivaa/Configuration;

    .line 18
    iput-object p1, p0, Lcom/htbridge/pivaa/handlers/about/AboutRecord;->name:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/htbridge/pivaa/handlers/about/AboutRecord;->description:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htbridge/pivaa/handlers/about/AboutRecord;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/htbridge/pivaa/handlers/about/AboutRecord;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htbridge/pivaa/handlers/about/AboutRecord;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htbridge/pivaa/handlers/about/AboutRecord;->description:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/htbridge/pivaa/handlers/about/AboutRecord;->id:I

    .line 28
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/htbridge/pivaa/handlers/about/AboutRecord;->name:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Record [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htbridge/pivaa/handlers/about/AboutRecord;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htbridge/pivaa/handlers/about/AboutRecord;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htbridge/pivaa/handlers/about/AboutRecord;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
