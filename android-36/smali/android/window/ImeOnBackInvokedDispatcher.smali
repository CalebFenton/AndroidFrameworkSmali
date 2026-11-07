.class public Landroid/window/ImeOnBackInvokedDispatcher;
.super Ljava/lang/Object;
.source "ImeOnBackInvokedDispatcher.java"

# interfaces
.implements Landroid/window/OnBackInvokedDispatcher;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper;,
        Landroid/window/ImeOnBackInvokedDispatcher$DefaultImeOnBackAnimationCallback;,
        Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/ImeOnBackInvokedDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist RESULT_CODE_REGISTER:I = 0x0

.field static final blacklist RESULT_CODE_UNREGISTER:I = 0x1

.field static final blacklist RESULT_KEY_CALLBACK:Ljava/lang/String; = "callback"

.field static final blacklist RESULT_KEY_ID:Ljava/lang/String; = "id"

.field static final blacklist RESULT_KEY_PRIORITY:Ljava/lang/String; = "priority"

.field private static final blacklist TAG:Ljava/lang/String; = "ImeBackDispatcher"


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mImeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mQueuedReceive:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mResultReceiver:Landroid/os/ResultReceiver;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/window/ImeOnBackInvokedDispatcher;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmQueuedReceive(Landroid/window/ImeOnBackInvokedDispatcher;)Ljava/util/ArrayDeque;
    .registers 1

    iget-object p0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mQueuedReceive:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreceive(Landroid/window/ImeOnBackInvokedDispatcher;ILandroid/os/Bundle;Landroid/window/WindowOnBackInvokedDispatcher;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/window/ImeOnBackInvokedDispatcher;->receive(ILandroid/os/Bundle;Landroid/window/WindowOnBackInvokedDispatcher;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 141
    new-instance v0, Landroid/window/ImeOnBackInvokedDispatcher$2;

    invoke-direct {v0}, Landroid/window/ImeOnBackInvokedDispatcher$2;-><init>()V

    sput-object v0, Landroid/window/ImeOnBackInvokedDispatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mQueuedReceive:Ljava/util/ArrayDeque;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mImeCallbacks:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Landroid/window/ImeOnBackInvokedDispatcher$1;

    invoke-direct {v0, p0, p1}, Landroid/window/ImeOnBackInvokedDispatcher$1;-><init>(Landroid/window/ImeOnBackInvokedDispatcher;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 77
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mQueuedReceive:Ljava/util/ArrayDeque;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mImeCallbacks:Ljava/util/ArrayList;

    .line 102
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 103
    return-void
.end method

.method private blacklist receive(ILandroid/os/Bundle;Landroid/window/WindowOnBackInvokedDispatcher;)V
    .registers 7
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;
    .param p3, "receivingDispatcher"    # Landroid/window/WindowOnBackInvokedDispatcher;

    .line 156
    const-string v0, "id"

    if-nez p1, :cond_1d

    .line 157
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 158
    .local v0, "callbackId":I
    const-string v1, "priority"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 159
    .local v1, "priority":I
    nop

    .line 160
    const-string v2, "callback"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 159
    invoke-static {v2}, Landroid/window/IOnBackInvokedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IOnBackInvokedCallback;

    move-result-object v2

    .line 161
    .local v2, "callback":Landroid/window/IOnBackInvokedCallback;
    invoke-direct {p0, v2, v1, v0, p3}, Landroid/window/ImeOnBackInvokedDispatcher;->registerReceivedCallback(Landroid/window/IOnBackInvokedCallback;IILandroid/window/WindowOnBackInvokedDispatcher;)V

    .end local v0    # "callbackId":I
    .end local v1    # "priority":I
    .end local v2    # "callback":Landroid/window/IOnBackInvokedCallback;
    goto :goto_28

    .line 162
    :cond_1d
    const/4 v1, 0x1

    if-ne p1, v1, :cond_28

    .line 163
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 164
    .restart local v0    # "callbackId":I
    invoke-direct {p0, v0, p3}, Landroid/window/ImeOnBackInvokedDispatcher;->unregisterReceivedCallback(ILandroid/window/OnBackInvokedDispatcher;)V

    goto :goto_29

    .line 162
    .end local v0    # "callbackId":I
    :cond_28
    :goto_28
    nop

    .line 166
    :goto_29
    return-void
.end method

.method private blacklist registerReceivedCallback(Landroid/window/IOnBackInvokedCallback;IILandroid/window/WindowOnBackInvokedDispatcher;)V
    .registers 7
    .param p1, "iCallback"    # Landroid/window/IOnBackInvokedCallback;
    .param p2, "priority"    # I
    .param p3, "callbackId"    # I
    .param p4, "receivingDispatcher"    # Landroid/window/WindowOnBackInvokedDispatcher;

    .line 174
    const/4 v0, -0x1

    if-ne p2, v0, :cond_a

    .line 179
    const/4 p2, 0x0

    .line 180
    new-instance v0, Landroid/window/ImeOnBackInvokedDispatcher$DefaultImeOnBackAnimationCallback;

    invoke-direct {v0, p1, p3, p2}, Landroid/window/ImeOnBackInvokedDispatcher$DefaultImeOnBackAnimationCallback;-><init>(Landroid/window/IOnBackInvokedCallback;II)V

    .local v0, "imeCallback":Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;
    goto :goto_f

    .line 182
    .end local v0    # "imeCallback":Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;
    :cond_a
    new-instance v0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;

    invoke-direct {v0, p1, p3, p2}, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;-><init>(Landroid/window/IOnBackInvokedCallback;II)V

    .line 184
    .restart local v0    # "imeCallback":Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;
    :goto_f
    iget-object v1, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mImeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {p4, v0, p2}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V

    .line 186
    return-void
.end method

.method private blacklist unregisterReceivedCallback(ILandroid/window/OnBackInvokedDispatcher;)V
    .registers 7
    .param p1, "callbackId"    # I
    .param p2, "receivingDispatcher"    # Landroid/window/OnBackInvokedDispatcher;

    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "callback":Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;
    iget-object v1, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mImeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;

    .line 192
    .local v2, "imeCallback":Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;
    invoke-static {v2}, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->-$$Nest$mgetId(Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;)I

    move-result v3

    if-ne v3, p1, :cond_1b

    .line 193
    move-object v0, v2

    .line 194
    goto :goto_1c

    .line 196
    .end local v2    # "imeCallback":Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;
    :cond_1b
    goto :goto_7

    .line 197
    :cond_1c
    :goto_1c
    if-nez v0, :cond_37

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ime callback not found. Ignoring unregisterReceivedCallback. callbackId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImeBackDispatcher"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void

    .line 202
    :cond_37
    invoke-interface {p2, v0}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 203
    iget-object v1, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mImeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 4

    .line 237
    invoke-virtual {p0}, Landroid/window/ImeOnBackInvokedDispatcher;->getReceivingDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 238
    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mImeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;

    .line 239
    .local v1, "callback":Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;
    invoke-virtual {p0}, Landroid/window/ImeOnBackInvokedDispatcher;->getReceivingDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 240
    .end local v1    # "callback":Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;
    goto :goto_c

    .line 242
    :cond_20
    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mImeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 243
    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mQueuedReceive:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 244
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist getReceivingDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;
    .registers 2

    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist preliminaryClear()V
    .registers 4

    .line 213
    invoke-virtual {p0}, Landroid/window/ImeOnBackInvokedDispatcher;->getReceivingDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 214
    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mImeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;

    .line 215
    .local v1, "callback":Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;
    invoke-virtual {p0}, Landroid/window/ImeOnBackInvokedDispatcher;->getReceivingDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 216
    .end local v1    # "callback":Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;
    goto :goto_c

    .line 218
    :cond_20
    return-void
.end method

.method public whitelist registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V
    .registers 7
    .param p1, "priority"    # I
    .param p2, "callback"    # Landroid/window/OnBackInvokedCallback;

    .line 109
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 115
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper;

    invoke-direct {v1, p0, p2}, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper;-><init>(Landroid/window/ImeOnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    .line 116
    .local v1, "iCallback":Landroid/window/IOnBackInvokedCallback;
    const-string v2, "callback"

    invoke-interface {v1}, Landroid/window/IOnBackInvokedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 117
    const-string v2, "priority"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    const-string v2, "id"

    invoke-interface {p2}, Landroid/window/OnBackInvokedCallback;->hashCode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    iget-object v2, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 120
    return-void
.end method

.method blacklist setHandler(Landroid/os/Handler;)V
    .registers 2
    .param p1, "handler"    # Landroid/os/Handler;

    .line 89
    iput-object p1, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mHandler:Landroid/os/Handler;

    .line 90
    return-void
.end method

.method public blacklist switchRootView(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl;)V
    .registers 7
    .param p1, "previous"    # Landroid/view/ViewRootImpl;
    .param p2, "current"    # Landroid/view/ViewRootImpl;

    .line 345
    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mImeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;

    .line 346
    .local v1, "imeCallback":Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;
    if-eqz p1, :cond_1b

    .line 347
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 349
    :cond_1b
    if-eqz p2, :cond_28

    .line 350
    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v2

    invoke-static {v1}, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->-$$Nest$fgetmPriority(Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V

    .line 353
    .end local v1    # "imeCallback":Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;
    :cond_28
    goto :goto_6

    .line 354
    :cond_29
    return-void
.end method

.method public blacklist undoPreliminaryClear()V
    .registers 5

    .line 226
    invoke-virtual {p0}, Landroid/window/ImeOnBackInvokedDispatcher;->getReceivingDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 227
    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mImeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;

    .line 228
    .local v1, "callback":Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;
    invoke-virtual {p0}, Landroid/window/ImeOnBackInvokedDispatcher;->getReceivingDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v2

    invoke-static {v1}, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->-$$Nest$fgetmPriority(Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V

    .line 230
    .end local v1    # "callback":Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;
    goto :goto_c

    .line 232
    :cond_24
    return-void
.end method

.method public whitelist unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/window/OnBackInvokedCallback;

    .line 125
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 126
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "id"

    invoke-interface {p1}, Landroid/window/OnBackInvokedCallback;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    iget-object v1, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 128
    return-void
.end method

.method public blacklist updateReceivingDispatcher(Landroid/window/WindowOnBackInvokedDispatcher;)V
    .registers 5
    .param p1, "dispatcher"    # Landroid/window/WindowOnBackInvokedDispatcher;

    .line 81
    nop

    :goto_1
    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mQueuedReceive:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 82
    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mQueuedReceive:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 83
    .local v0, "queuedMessage":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/os/Bundle;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-direct {p0, v1, v2, p1}, Landroid/window/ImeOnBackInvokedDispatcher;->receive(ILandroid/os/Bundle;Landroid/window/WindowOnBackInvokedDispatcher;)V

    .line 84
    .end local v0    # "queuedMessage":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/os/Bundle;>;"
    goto :goto_1

    .line 85
    :cond_21
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 137
    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 138
    return-void
.end method
