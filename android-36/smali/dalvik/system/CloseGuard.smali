.class public final Ldalvik/system/CloseGuard;
.super Ljava/lang/Object;
.source "CloseGuard.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/CloseGuard$Reporter;,
        Ldalvik/system/CloseGuard$Tracker;,
        Ldalvik/system/CloseGuard$DefaultReporter;
    }
.end annotation


# static fields
.field private static final blacklist MESSAGE:Ljava/lang/String; = "A resource was acquired at attached stack trace but never released. See java.io.Closeable for information on avoiding resource leaks."

.field private static volatile greylist-max-o currentTracker:Ldalvik/system/CloseGuard$Tracker;

.field private static volatile greylist-max-o reporter:Ldalvik/system/CloseGuard$Reporter;

.field private static volatile greylist-max-o stackAndTrackingEnabled:Z


# instance fields
.field private greylist-max-o closerNameOrAllocationInfo:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 127
    const/4 v0, 0x1

    sput-boolean v0, Ldalvik/system/CloseGuard;->stackAndTrackingEnabled:Z

    .line 133
    new-instance v0, Ldalvik/system/CloseGuard$DefaultReporter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldalvik/system/CloseGuard$DefaultReporter;-><init>(Ldalvik/system/CloseGuard-IA;)V

    sput-object v0, Ldalvik/system/CloseGuard;->reporter:Ldalvik/system/CloseGuard$Reporter;

    .line 138
    sput-object v1, Ldalvik/system/CloseGuard;->currentTracker:Ldalvik/system/CloseGuard$Tracker;

    return-void
.end method

.method private constructor greylist <init>()V
    .registers 1

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist test-api get()Ldalvik/system/CloseGuard;
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 155
    new-instance v0, Ldalvik/system/CloseGuard;

    invoke-direct {v0}, Ldalvik/system/CloseGuard;-><init>()V

    return-object v0
.end method

.method public static greylist-max-o test-api getReporter()Ldalvik/system/CloseGuard$Reporter;
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 210
    sget-object v0, Ldalvik/system/CloseGuard;->reporter:Ldalvik/system/CloseGuard$Reporter;

    return-object v0
.end method

.method public static greylist-max-o getTracker()Ldalvik/system/CloseGuard$Tracker;
    .registers 1

    .line 237
    sget-object v0, Ldalvik/system/CloseGuard;->currentTracker:Ldalvik/system/CloseGuard$Tracker;

    return-object v0
.end method

.method public static greylist-max-o isEnabled()Z
    .registers 1

    .line 181
    sget-boolean v0, Ldalvik/system/CloseGuard;->stackAndTrackingEnabled:Z

    return v0
.end method

.method public static greylist test-api setEnabled(Z)V
    .registers 1
    .param p0, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 172
    sput-boolean p0, Ldalvik/system/CloseGuard;->stackAndTrackingEnabled:Z

    .line 173
    return-void
.end method

.method public static greylist test-api setReporter(Ldalvik/system/CloseGuard$Reporter;)V
    .registers 3
    .param p0, "rep"    # Ldalvik/system/CloseGuard$Reporter;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 195
    if-eqz p0, :cond_5

    .line 198
    sput-object p0, Ldalvik/system/CloseGuard;->reporter:Ldalvik/system/CloseGuard$Reporter;

    .line 199
    return-void

    .line 196
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "reporter == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o setTracker(Ldalvik/system/CloseGuard$Tracker;)V
    .registers 1
    .param p0, "tracker"    # Ldalvik/system/CloseGuard$Tracker;

    .line 224
    sput-object p0, Ldalvik/system/CloseGuard;->currentTracker:Ldalvik/system/CloseGuard$Tracker;

    .line 225
    return-void
.end method


# virtual methods
.method public greylist test-api close()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 313
    sget-object v0, Ldalvik/system/CloseGuard;->currentTracker:Ldalvik/system/CloseGuard$Tracker;

    .line 314
    .local v0, "tracker":Ldalvik/system/CloseGuard$Tracker;
    if-eqz v0, :cond_11

    iget-object v1, p0, Ldalvik/system/CloseGuard;->closerNameOrAllocationInfo:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_11

    .line 316
    iget-object v1, p0, Ldalvik/system/CloseGuard;->closerNameOrAllocationInfo:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Ldalvik/system/CloseGuard$Tracker;->close(Ljava/lang/Throwable;)V

    .line 318
    :cond_11
    const/4 v1, 0x0

    iput-object v1, p0, Ldalvik/system/CloseGuard;->closerNameOrAllocationInfo:Ljava/lang/Object;

    .line 319
    return-void
.end method

.method public greylist test-api open(Ljava/lang/String;)V
    .registers 3
    .param p1, "closer"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 257
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldalvik/system/CloseGuard;->openWithCallSite(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public blacklist test-api openWithCallSite(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "closer"    # Ljava/lang/String;
    .param p2, "callsite"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 275
    if-eqz p1, :cond_3a

    .line 279
    sget-boolean v0, Ldalvik/system/CloseGuard;->stackAndTrackingEnabled:Z

    if-nez v0, :cond_9

    .line 280
    iput-object p1, p0, Ldalvik/system/CloseGuard;->closerNameOrAllocationInfo:Ljava/lang/Object;

    .line 281
    return-void

    .line 285
    :cond_9
    sget-object v0, Ldalvik/system/CloseGuard;->currentTracker:Ldalvik/system/CloseGuard$Tracker;

    .line 286
    .local v0, "tracker":Ldalvik/system/CloseGuard$Tracker;
    if-eqz p2, :cond_13

    if-eqz v0, :cond_10

    goto :goto_13

    .line 294
    :cond_10
    iput-object p2, p0, Ldalvik/system/CloseGuard;->closerNameOrAllocationInfo:Ljava/lang/Object;

    goto :goto_39

    .line 287
    :cond_13
    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Explicit termination method \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 289
    .local v2, "stack":Ljava/lang/Throwable;
    iput-object v2, p0, Ldalvik/system/CloseGuard;->closerNameOrAllocationInfo:Ljava/lang/Object;

    .line 290
    if-eqz v0, :cond_38

    .line 291
    invoke-interface {v0, v2}, Ldalvik/system/CloseGuard$Tracker;->open(Ljava/lang/Throwable;)V

    .line 293
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "stack":Ljava/lang/Throwable;
    :cond_38
    nop

    .line 296
    :goto_39
    return-void

    .line 276
    .end local v0    # "tracker":Ldalvik/system/CloseGuard$Tracker;
    :cond_3a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "closer == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist test-api warnIfOpen()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 334
    iget-object v0, p0, Ldalvik/system/CloseGuard;->closerNameOrAllocationInfo:Ljava/lang/Object;

    if-eqz v0, :cond_55

    .line 335
    iget-object v0, p0, Ldalvik/system/CloseGuard;->closerNameOrAllocationInfo:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_16

    .line 336
    sget-object v0, Ldalvik/system/CloseGuard;->reporter:Ldalvik/system/CloseGuard$Reporter;

    iget-object v1, p0, Ldalvik/system/CloseGuard;->closerNameOrAllocationInfo:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    const-string v2, "A resource was acquired at attached stack trace but never released. See java.io.Closeable for information on avoiding resource leaks."

    invoke-interface {v0, v2, v1}, Ldalvik/system/CloseGuard$Reporter;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_55

    .line 337
    :cond_16
    sget-boolean v0, Ldalvik/system/CloseGuard;->stackAndTrackingEnabled:Z

    if-eqz v0, :cond_35

    .line 338
    sget-object v0, Ldalvik/system/CloseGuard;->reporter:Ldalvik/system/CloseGuard$Reporter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A resource was acquired at attached stack trace but never released. See java.io.Closeable for information on avoiding resource leaks. Callsite: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldalvik/system/CloseGuard;->closerNameOrAllocationInfo:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldalvik/system/CloseGuard$Reporter;->report(Ljava/lang/String;)V

    goto :goto_55

    .line 340
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A resource failed to call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldalvik/system/CloseGuard;->closerNameOrAllocationInfo:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->logW(Ljava/lang/String;)V

    .line 344
    :cond_55
    :goto_55
    return-void
.end method
