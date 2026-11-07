.class public final Landroid/provider/mediacognitionutils/ProcessMediaCallbackImpl;
.super Ljava/lang/Object;
.source "ProcessMediaCallbackImpl.java"

# interfaces
.implements Landroid/provider/MediaCognitionProcessingCallback;


# static fields
.field private static final blacklist RESPONSE_CURSOR_NAME:Ljava/lang/String; = "MediaCognitionResponseCursorWindow"


# instance fields
.field private final blacklist mBinderCallback:Landroid/provider/mediacognitionutils/ICognitionProcessMediaCallbackInternal;

.field private blacklist mCalled:Z


# direct methods
.method public constructor blacklist <init>(Landroid/provider/mediacognitionutils/ICognitionProcessMediaCallbackInternal;)V
    .registers 3
    .param p1, "binderCallback"    # Landroid/provider/mediacognitionutils/ICognitionProcessMediaCallbackInternal;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/provider/mediacognitionutils/ProcessMediaCallbackImpl;->mBinderCallback:Landroid/provider/mediacognitionutils/ICognitionProcessMediaCallbackInternal;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/provider/mediacognitionutils/ProcessMediaCallbackImpl;->mCalled:Z

    .line 50
    return-void
.end method

.method private blacklist addImageLabels(Landroid/database/CursorWindow;Landroid/provider/MediaCognitionProcessingResponse;Landroid/provider/MediaCognitionProcessingRequest;I)Z
    .registers 8
    .param p1, "window"    # Landroid/database/CursorWindow;
    .param p2, "response"    # Landroid/provider/MediaCognitionProcessingResponse;
    .param p3, "request"    # Landroid/provider/MediaCognitionProcessingRequest;
    .param p4, "row"    # I

    .line 195
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 196
    .local v1, "column":I
    invoke-virtual {p3, v0}, Landroid/provider/MediaCognitionProcessingRequest;->checkProcessingRequired(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 197
    invoke-virtual {p2}, Landroid/provider/MediaCognitionProcessingResponse;->getImageLabels()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 198
    const-string v0, "|"

    invoke-virtual {p2}, Landroid/provider/MediaCognitionProcessingResponse;->getImageLabels()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p4, v1}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v0

    return v0

    .line 201
    :cond_22
    invoke-virtual {p1, p4, v1}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v0

    return v0
.end method

.method private blacklist addImageOcrLatin(Landroid/database/CursorWindow;Landroid/provider/MediaCognitionProcessingResponse;Landroid/provider/MediaCognitionProcessingRequest;I)Z
    .registers 7
    .param p1, "window"    # Landroid/database/CursorWindow;
    .param p2, "response"    # Landroid/provider/MediaCognitionProcessingResponse;
    .param p3, "request"    # Landroid/provider/MediaCognitionProcessingRequest;
    .param p4, "row"    # I

    .line 184
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 186
    .local v1, "column":I
    invoke-virtual {p3, v0}, Landroid/provider/MediaCognitionProcessingRequest;->checkProcessingRequired(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 187
    invoke-virtual {p2}, Landroid/provider/MediaCognitionProcessingResponse;->getImageOcrLatin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 188
    invoke-virtual {p2}, Landroid/provider/MediaCognitionProcessingResponse;->getImageOcrLatin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p4, v1}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v0

    return v0

    .line 190
    :cond_1b
    invoke-virtual {p1, p4, v1}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v0

    return v0
.end method

.method private blacklist wrapInCursorWindows(Ljava/util/List;)[Landroid/database/CursorWindow;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/provider/MediaCognitionProcessingResponse;",
            ">;)[",
            "Landroid/database/CursorWindow;"
        }
    .end annotation

    .line 95
    .local p1, "responses":Ljava/util/List;, "Ljava/util/List<Landroid/provider/MediaCognitionProcessingResponse;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v0, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/CursorWindow;>;"
    new-instance v1, Landroid/database/CursorWindow;

    const-string v2, "MediaCognitionResponseCursorWindow"

    invoke-direct {v1, v2}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    .line 98
    .local v1, "window":Landroid/database/CursorWindow;
    const-class v3, Landroid/provider/MediaCognitionService$ProcessingTypes;

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    .line 99
    .local v3, "numColumns":I
    invoke-virtual {v1, v3}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 100
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    const/4 v4, 0x0

    .line 108
    .local v4, "retryingRowAddition":Z
    const/4 v5, 0x0

    .local v5, "row":I
    :goto_1d
    :try_start_1d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_10b

    .line 110
    invoke-virtual {v1}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v6
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_27} :catch_119

    const-string v7, "MediaCognitionService"

    if-nez v6, :cond_71

    .line 112
    :try_start_2b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Allocating additional cursor window for large data set (row "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v6, Landroid/database/CursorWindow;

    invoke-direct {v6, v2}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    move-object v1, v6

    .line 115
    invoke-virtual {v1, v5}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 116
    invoke-virtual {v1, v3}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 117
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {v1}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v6

    if-nez v6, :cond_71

    .line 121
    const-string v2, "Unable to allocate row to hold data."

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/database/CursorWindow;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/database/CursorWindow;

    return-object v2

    .line 129
    :cond_71
    const/4 v6, 0x1

    .line 132
    .local v6, "dataAdded":Z
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/provider/MediaCognitionProcessingResponse;

    invoke-virtual {v8}, Landroid/provider/MediaCognitionProcessingResponse;->getRequest()Landroid/provider/MediaCognitionProcessingRequest;

    move-result-object v8

    .line 133
    .local v8, "request":Landroid/provider/MediaCognitionProcessingRequest;
    if-eqz v8, :cond_fd

    invoke-virtual {v8}, Landroid/provider/MediaCognitionProcessingRequest;->getUri()Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_fd

    .line 134
    invoke-virtual {v8}, Landroid/provider/MediaCognitionProcessingRequest;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_8f

    goto :goto_fd

    .line 141
    :cond_8f
    invoke-virtual {v8}, Landroid/provider/MediaCognitionProcessingRequest;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v5, v10}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v9

    and-int/2addr v6, v9

    .line 143
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/provider/MediaCognitionProcessingResponse;

    invoke-direct {p0, v1, v9, v8, v5}, Landroid/provider/mediacognitionutils/ProcessMediaCallbackImpl;->addImageOcrLatin(Landroid/database/CursorWindow;Landroid/provider/MediaCognitionProcessingResponse;Landroid/provider/MediaCognitionProcessingRequest;I)Z

    move-result v9

    and-int/2addr v6, v9

    .line 144
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/provider/MediaCognitionProcessingResponse;

    invoke-direct {p0, v1, v9, v8, v5}, Landroid/provider/mediacognitionutils/ProcessMediaCallbackImpl;->addImageLabels(Landroid/database/CursorWindow;Landroid/provider/MediaCognitionProcessingResponse;Landroid/provider/MediaCognitionProcessingRequest;I)Z

    move-result v9

    and-int/2addr v6, v9

    .line 146
    if-nez v6, :cond_fb

    .line 148
    if-eqz v4, :cond_c9

    .line 150
    const-string v9, "Could not add value to cursorWindow The size may be larger than limit "

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {v1}, Landroid/database/CursorWindow;->clear()V

    .line 154
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v7}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 155
    invoke-virtual {v1, v3}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 156
    const/4 v4, 0x0

    .line 157
    goto :goto_107

    .line 159
    :cond_c9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t populate window data for row "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - allocating new window."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {v1}, Landroid/database/CursorWindow;->freeLastRow()V

    .line 162
    new-instance v7, Landroid/database/CursorWindow;

    invoke-direct {v7, v2}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    move-object v1, v7

    .line 163
    invoke-virtual {v1, v5}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 164
    invoke-virtual {v1, v3}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 165
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v5, v5, -0x1

    .line 167
    const/4 v4, 0x1

    goto :goto_107

    .line 169
    :cond_fb
    const/4 v4, 0x0

    goto :goto_107

    .line 135
    :cond_fd
    :goto_fd
    const-string v9, "Correct request not set in the response"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {v1}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_105
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_105} :catch_119

    .line 138
    const/4 v4, 0x0

    .line 139
    nop

    .line 108
    .end local v6    # "dataAdded":Z
    .end local v8    # "request":Landroid/provider/MediaCognitionProcessingRequest;
    :goto_107
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1d

    .line 178
    .end local v4    # "retryingRowAddition":Z
    .end local v5    # "row":I
    :cond_10b
    nop

    .line 179
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/database/CursorWindow;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/database/CursorWindow;

    return-object v2

    .line 172
    :catch_119
    move-exception v2

    .line 174
    .local v2, "re":Ljava/lang/RuntimeException;
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "count":I
    :goto_11f
    if-ge v4, v5, :cond_12d

    .line 175
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/CursorWindow;

    invoke-virtual {v6}, Landroid/database/CursorWindow;->close()V

    .line 174
    add-int/lit8 v4, v4, 0x1

    goto :goto_11f

    .line 177
    .end local v4    # "i":I
    .end local v5    # "count":I
    :cond_12d
    throw v2
.end method


# virtual methods
.method public whitelist onFailure(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .line 74
    iget-boolean v0, p0, Landroid/provider/mediacognitionutils/ProcessMediaCallbackImpl;->mCalled:Z

    const-string v1, "MediaCognitionService"

    if-eqz v0, :cond_c

    .line 75
    const-string v0, "The callback can only be called once"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void

    .line 78
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/provider/mediacognitionutils/ProcessMediaCallbackImpl;->mCalled:Z

    .line 80
    :try_start_f
    iget-object v0, p0, Landroid/provider/mediacognitionutils/ProcessMediaCallbackImpl;->mBinderCallback:Landroid/provider/mediacognitionutils/ICognitionProcessMediaCallbackInternal;

    invoke-interface {v0, p1}, Landroid/provider/mediacognitionutils/ICognitionProcessMediaCallbackInternal;->onProcessMediaFailure(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    .line 84
    goto :goto_1b

    .line 81
    :catch_15
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Unable to send callback of Process Media failure"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method

.method public whitelist onSuccess(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/provider/MediaCognitionProcessingResponse;",
            ">;)V"
        }
    .end annotation

    .line 54
    .local p1, "responses":Ljava/util/List;, "Ljava/util/List<Landroid/provider/MediaCognitionProcessingResponse;>;"
    iget-boolean v0, p0, Landroid/provider/mediacognitionutils/ProcessMediaCallbackImpl;->mCalled:Z

    const-string v1, "MediaCognitionService"

    if-eqz v0, :cond_c

    .line 55
    const-string v0, "The callback can only be called once"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void

    .line 58
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/provider/mediacognitionutils/ProcessMediaCallbackImpl;->mCalled:Z

    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1b

    .line 60
    const-string v0, "Empty response"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void

    .line 64
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Landroid/provider/mediacognitionutils/ProcessMediaCallbackImpl;->mBinderCallback:Landroid/provider/mediacognitionutils/ICognitionProcessMediaCallbackInternal;

    invoke-direct {p0, p1}, Landroid/provider/mediacognitionutils/ProcessMediaCallbackImpl;->wrapInCursorWindows(Ljava/util/List;)[Landroid/database/CursorWindow;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/provider/mediacognitionutils/ICognitionProcessMediaCallbackInternal;->onProcessMediaSuccess([Landroid/database/CursorWindow;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_25

    .line 68
    goto :goto_2b

    .line 65
    :catch_25
    move-exception v0

    .line 66
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Unable to send callback of Process Media result"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2b
    return-void
.end method
