.class Landroid/widget/DateTimeView$ReceiverInfo;
.super Ljava/lang/Object;
.source "DateTimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DateTimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReceiverInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DateTimeView$ReceiverInfo$1;,
        Landroid/widget/DateTimeView$ReceiverInfo$2;
    }
.end annotation


# instance fields
.field private final mAttachedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/DateTimeView;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Landroid/database/ContentObserver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 202
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    #@a
    .line 203
    new-instance v0, Landroid/widget/DateTimeView$ReceiverInfo$1;

    #@c
    invoke-direct {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo$1;-><init>(Landroid/widget/DateTimeView$ReceiverInfo;)V

    #@f
    iput-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    #@11
    .line 220
    new-instance v0, Landroid/widget/DateTimeView$ReceiverInfo$2;

    #@13
    new-instance v1, Landroid/os/Handler;

    #@15
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    #@18
    invoke-direct {v0, p0, v1}, Landroid/widget/DateTimeView$ReceiverInfo$2;-><init>(Landroid/widget/DateTimeView$ReceiverInfo;Landroid/os/Handler;)V

    #@1b
    iput-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mObserver:Landroid/database/ContentObserver;

    #@1d
    .line 201
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/DateTimeView$ReceiverInfo;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>()V

    #@3
    return-void
.end method

.method static final getApplicationContextIfAvailable(Landroid/content/Context;)Landroid/content/Context;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 262
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 263
    .local v0, "ac":Landroid/content/Context;
    if-eqz v0, :cond_0

    #@6
    .end local v0    # "ac":Landroid/content/Context;
    :goto_0
    return-object v0

    #@7
    .restart local v0    # "ac":Landroid/content/Context;
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    #@e
    move-result-object v0

    #@f
    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/widget/DateTimeView;)V
    .locals 2
    .param p1, "v"    # Landroid/widget/DateTimeView;

    #@0
    .prologue
    .line 228
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    .line 229
    .local v0, "register":Z
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b
    .line 230
    if-eqz v0, :cond_0

    #@d
    .line 231
    invoke-virtual {p1}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    #@10
    move-result-object v1

    #@11
    invoke-static {v1}, Landroid/widget/DateTimeView$ReceiverInfo;->getApplicationContextIfAvailable(Landroid/content/Context;)Landroid/content/Context;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {p0, v1}, Landroid/widget/DateTimeView$ReceiverInfo;->register(Landroid/content/Context;)V

    #@18
    .line 227
    :cond_0
    return-void
.end method

.method getSoonestUpdateTime()J
    .locals 7

    #@0
    .prologue
    .line 250
    const-wide v2, 0x7fffffffffffffffL

    #@5
    .line 251
    .local v2, "result":J
    iget-object v6, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v0

    #@b
    .line 252
    .local v0, "count":I
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@e
    .line 253
    iget-object v6, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v6

    #@14
    check-cast v6, Landroid/widget/DateTimeView;

    #@16
    invoke-static {v6}, Landroid/widget/DateTimeView;->-get0(Landroid/widget/DateTimeView;)J

    #@19
    move-result-wide v4

    #@1a
    .line 254
    .local v4, "time":J
    cmp-long v6, v4, v2

    #@1c
    if-gez v6, :cond_0

    #@1e
    .line 255
    move-wide v2, v4

    #@1f
    .line 252
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 258
    .end local v4    # "time":J
    :cond_1
    return-wide v2
.end method

.method register(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 267
    new-instance v0, Landroid/content/IntentFilter;

    #@2
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@5
    .line 268
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    #@8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@b
    .line 269
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    #@e
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@11
    .line 270
    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    #@14
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@17
    .line 271
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    #@1a
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1d
    .line 272
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    #@1f
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@22
    .line 266
    return-void
.end method

.method public removeView(Landroid/widget/DateTimeView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/DateTimeView;

    #@0
    .prologue
    .line 236
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 237
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 238
    invoke-virtual {p1}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    #@10
    move-result-object v0

    #@11
    invoke-static {v0}, Landroid/widget/DateTimeView$ReceiverInfo;->getApplicationContextIfAvailable(Landroid/content/Context;)Landroid/content/Context;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {p0, v0}, Landroid/widget/DateTimeView$ReceiverInfo;->unregister(Landroid/content/Context;)V

    #@18
    .line 235
    :cond_0
    return-void
.end method

.method unregister(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 276
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    #@2
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@5
    .line 275
    return-void
.end method

.method updateAll()V
    .locals 3

    #@0
    .prologue
    .line 243
    iget-object v2, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 244
    .local v0, "count":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@9
    .line 245
    iget-object v2, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/widget/DateTimeView;

    #@11
    invoke-virtual {v2}, Landroid/widget/DateTimeView;->clearFormatAndUpdate()V

    #@14
    .line 244
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 242
    :cond_0
    return-void
.end method
