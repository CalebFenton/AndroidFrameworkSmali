.class Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;
.super Landroid/os/AsyncTask;
.source "TextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeech$Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupConnectionAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mName:Landroid/content/ComponentName;

.field final synthetic this$1:Landroid/speech/tts/TextToSpeech$Connection;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeech$Connection;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "this$1"    # Landroid/speech/tts/TextToSpeech$Connection;
    .param p2, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 2132
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    #@2
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@5
    .line 2133
    iput-object p2, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->mName:Landroid/content/ComponentName;

    #@7
    .line 2132
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2138
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    #@3
    iget-object v3, v3, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    #@5
    invoke-static {v3}, Landroid/speech/tts/TextToSpeech;->-get4(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;

    #@8
    move-result-object v4

    #@9
    monitor-enter v4

    #@a
    .line 2139
    :try_start_0
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_0

    #@10
    monitor-exit v4

    #@11
    .line 2140
    return-object v5

    #@12
    .line 2144
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    #@14
    invoke-static {v3}, Landroid/speech/tts/TextToSpeech$Connection;->-get2(Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/ITextToSpeechService;

    #@17
    move-result-object v3

    #@18
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    #@1a
    invoke-virtual {v5}, Landroid/speech/tts/TextToSpeech$Connection;->getCallerIdentity()Landroid/os/IBinder;

    #@1d
    move-result-object v5

    #@1e
    iget-object v6, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    #@20
    invoke-static {v6}, Landroid/speech/tts/TextToSpeech$Connection;->-get0(Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/ITextToSpeechCallback$Stub;

    #@23
    move-result-object v6

    #@24
    invoke-interface {v3, v5, v6}, Landroid/speech/tts/ITextToSpeechService;->setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V

    #@27
    .line 2146
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    #@29
    iget-object v3, v3, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    #@2b
    invoke-static {v3}, Landroid/speech/tts/TextToSpeech;->-get2(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    #@2e
    move-result-object v3

    #@2f
    const-string/jumbo v5, "language"

    #@32
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    if-nez v3, :cond_1

    #@38
    .line 2147
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    #@3a
    invoke-static {v3}, Landroid/speech/tts/TextToSpeech$Connection;->-get2(Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/ITextToSpeechService;

    #@3d
    move-result-object v3

    #@3e
    invoke-interface {v3}, Landroid/speech/tts/ITextToSpeechService;->getClientDefaultLanguage()[Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    .line 2148
    .local v0, "defaultLanguage":[Ljava/lang/String;
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    #@44
    iget-object v3, v3, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    #@46
    invoke-static {v3}, Landroid/speech/tts/TextToSpeech;->-get2(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    #@49
    move-result-object v3

    #@4a
    const-string/jumbo v5, "language"

    #@4d
    const/4 v6, 0x0

    #@4e
    aget-object v6, v0, v6

    #@50
    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@53
    .line 2149
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    #@55
    iget-object v3, v3, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    #@57
    invoke-static {v3}, Landroid/speech/tts/TextToSpeech;->-get2(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    #@5a
    move-result-object v3

    #@5b
    const-string/jumbo v5, "country"

    #@5e
    const/4 v6, 0x1

    #@5f
    aget-object v6, v0, v6

    #@61
    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@64
    .line 2150
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    #@66
    iget-object v3, v3, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    #@68
    invoke-static {v3}, Landroid/speech/tts/TextToSpeech;->-get2(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    #@6b
    move-result-object v3

    #@6c
    const-string/jumbo v5, "variant"

    #@6f
    const/4 v6, 0x2

    #@70
    aget-object v6, v0, v6

    #@72
    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@75
    .line 2153
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    #@77
    invoke-static {v3}, Landroid/speech/tts/TextToSpeech$Connection;->-get2(Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/ITextToSpeechService;

    #@7a
    move-result-object v3

    #@7b
    .line 2154
    const/4 v5, 0x0

    #@7c
    aget-object v5, v0, v5

    #@7e
    const/4 v6, 0x1

    #@7f
    aget-object v6, v0, v6

    #@81
    const/4 v7, 0x2

    #@82
    aget-object v7, v0, v7

    #@84
    .line 2153
    invoke-interface {v3, v5, v6, v7}, Landroid/speech/tts/ITextToSpeechService;->getDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@87
    move-result-object v1

    #@88
    .line 2155
    .local v1, "defaultVoiceName":Ljava/lang/String;
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    #@8a
    iget-object v3, v3, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    #@8c
    invoke-static {v3}, Landroid/speech/tts/TextToSpeech;->-get2(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    #@8f
    move-result-object v3

    #@90
    const-string/jumbo v5, "voiceName"

    #@93
    invoke-virtual {v3, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@96
    .line 2158
    .end local v0    # "defaultLanguage":[Ljava/lang/String;
    .end local v1    # "defaultVoiceName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "TextToSpeech"

    #@99
    new-instance v5, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    const-string/jumbo v6, "Set up connection to "

    #@a1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v5

    #@a5
    iget-object v6, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->mName:Landroid/content/ComponentName;

    #@a7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v5

    #@ab
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v5

    #@af
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@b2
    .line 2159
    const/4 v3, 0x0

    #@b3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b6
    move-result-object v3

    #@b7
    monitor-exit v4

    #@b8
    return-object v3

    #@b9
    .line 2160
    :catch_0
    move-exception v2

    #@ba
    .line 2161
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "TextToSpeech"

    #@bd
    const-string/jumbo v5, "Error connecting to service, setCallback() failed"

    #@c0
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c3
    .line 2162
    const/4 v3, -0x1

    #@c4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@c7
    move-result-object v3

    #@c8
    monitor-exit v4

    #@c9
    return-object v3

    #@ca
    .line 2138
    .end local v2    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    #@cb
    monitor-exit v4

    #@cc
    throw v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 2137
    check-cast p1, [Ljava/lang/Void;

    #@2
    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;

    #@0
    .prologue
    .line 2169
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    #@2
    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    #@4
    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-get4(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    monitor-enter v1

    #@9
    .line 2170
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    #@b
    invoke-static {v0}, Landroid/speech/tts/TextToSpeech$Connection;->-get1(Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    #@e
    move-result-object v0

    #@f
    if-ne v0, p0, :cond_0

    #@11
    .line 2171
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    #@13
    const/4 v2, 0x0

    #@14
    invoke-static {v0, v2}, Landroid/speech/tts/TextToSpeech$Connection;->-set1(Landroid/speech/tts/TextToSpeech$Connection;Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;)Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    #@17
    .line 2173
    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    #@19
    const/4 v2, 0x1

    #@1a
    invoke-static {v0, v2}, Landroid/speech/tts/TextToSpeech$Connection;->-set0(Landroid/speech/tts/TextToSpeech$Connection;Z)Z

    #@1d
    .line 2174
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    #@1f
    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    #@21
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@24
    move-result v2

    #@25
    invoke-static {v0, v2}, Landroid/speech/tts/TextToSpeech;->-wrap4(Landroid/speech/tts/TextToSpeech;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    monitor-exit v1

    #@29
    .line 2168
    return-void

    #@2a
    .line 2169
    :catchall_0
    move-exception v0

    #@2b
    monitor-exit v1

    #@2c
    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2168
    check-cast p1, Ljava/lang/Integer;

    #@2
    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    #@5
    return-void
.end method
