.class public Lcom/htbridge/pivaa/handlers/VulnerableService;
.super Landroid/app/Service;
.source "VulnerableService.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# instance fields
.field private Audio_MAX_FILE_SIZE:J

.field private amplitudes:[I

.field private i:I

.field private mOutputFile:Ljava/io/File;

.field private mRecorder:Landroid/media/MediaRecorder;

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 33
    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/htbridge/pivaa/handlers/VulnerableService;->Audio_MAX_FILE_SIZE:J

    .line 35
    const/16 v0, 0x64

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htbridge/pivaa/handlers/VulnerableService;->amplitudes:[I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/htbridge/pivaa/handlers/VulnerableService;->i:I

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htbridge/pivaa/handlers/VulnerableService;->mStartTime:J

    return-void
.end method

.method private getOutputFile()Ljava/io/File;
    .locals 4

    .prologue
    .line 124
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd_HHmmssSSS"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 126
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 127
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/RECORDING_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 129
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".m4a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "full_path":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Audio file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 134
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method private startRecording()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 64
    const-string/jumbo v2, "START RECORDING AUDIO"

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 67
    :try_start_0
    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v2, p0, Lcom/htbridge/pivaa/handlers/VulnerableService;->mRecorder:Landroid/media/MediaRecorder;

    .line 68
    iget-object v2, p0, Lcom/htbridge/pivaa/handlers/VulnerableService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 70
    :try_start_1
    iget-object v2, p0, Lcom/htbridge/pivaa/handlers/VulnerableService;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/htbridge/pivaa/handlers/VulnerableService;->mRecorder:Landroid/media/MediaRecorder;

    iget-wide v4, p0, Lcom/htbridge/pivaa/handlers/VulnerableService;->Audio_MAX_FILE_SIZE:J

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 80
    iget-object v2, p0, Lcom/htbridge/pivaa/handlers/VulnerableService;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 83
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 84
    iget-object v2, p0, Lcom/htbridge/pivaa/handlers/VulnerableService;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 85
    iget-object v2, p0, Lcom/htbridge/pivaa/handlers/VulnerableService;->mRecorder:Landroid/media/MediaRecorder;

    const v3, 0xbb80

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 91
    :goto_1
    iget-object v2, p0, Lcom/htbridge/pivaa/handlers/VulnerableService;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v3, 0x3e80

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 92
    invoke-direct {p0}, Lcom/htbridge/pivaa/handlers/VulnerableService;->getOutputFile()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/htbridge/pivaa/handlers/VulnerableService;->mOutputFile:Ljava/io/File;

    .line 93
    iget-object v2, p0, Lcom/htbridge/pivaa/handlers/VulnerableService;->mOutputFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 94
    iget-object v2, p0, Lcom/htbridge/pivaa/handlers/VulnerableService;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/htbridge/pivaa/handlers/VulnerableService;->mOutputFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 97
    :try_start_3
    iget-object v2, p0, Lcom/htbridge/pivaa/handlers/VulnerableService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V

    .line 98
    iget-object v2, p0, Lcom/htbridge/pivaa/handlers/VulnerableService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V

    .line 99
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htbridge/pivaa/handlers/VulnerableService;->mStartTime:J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 106
    :goto_2
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 74
    :try_start_5
    iget-object v2, p0, Lcom/htbridge/pivaa/handlers/VulnerableService;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 75
    :catch_1
    move-exception v1

    .line 76
    .local v1, "ee":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ee":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 104
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ERROR STARTING AUDIO RECORDING. REASON: YOU\'RE USING EMULATOR"

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_7
    iget-object v2, p0, Lcom/htbridge/pivaa/handlers/VulnerableService;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 88
    iget-object v2, p0, Lcom/htbridge/pivaa/handlers/VulnerableService;->mRecorder:Landroid/media/MediaRecorder;

    const v3, 0xfa00

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    goto :goto_1

    .line 100
    :catch_3
    move-exception v0

    .line 101
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "AudioService"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 43
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 148
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htbridge/pivaa/handlers/VulnerableService;->stopRecording(Z)V

    .line 149
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 1
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 140
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 141
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htbridge/pivaa/handlers/VulnerableService;->stopRecording(Z)V

    .line 143
    :cond_0
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 54
    invoke-direct {p0}, Lcom/htbridge/pivaa/handlers/VulnerableService;->startRecording()V

    .line 55
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method protected stopRecording(Z)V
    .locals 2
    .param p1, "saveFile"    # Z

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htbridge/pivaa/handlers/VulnerableService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 110
    iget-object v0, p0, Lcom/htbridge/pivaa/handlers/VulnerableService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htbridge/pivaa/handlers/VulnerableService;->mRecorder:Landroid/media/MediaRecorder;

    .line 112
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htbridge/pivaa/handlers/VulnerableService;->mStartTime:J

    .line 113
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htbridge/pivaa/handlers/VulnerableService;->mOutputFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/htbridge/pivaa/handlers/VulnerableService;->mOutputFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 117
    :cond_0
    const-string/jumbo v0, "STOP RECORDING AUDIO"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 120
    invoke-virtual {p0}, Lcom/htbridge/pivaa/handlers/VulnerableService;->stopSelf()V

    .line 121
    return-void
.end method
