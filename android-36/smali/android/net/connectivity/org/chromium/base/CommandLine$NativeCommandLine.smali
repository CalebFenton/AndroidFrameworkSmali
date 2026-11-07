.class Landroid/net/connectivity/org/chromium/base/CommandLine$NativeCommandLine;
.super Landroid/net/connectivity/org/chromium/base/CommandLine;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/CommandLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeCommandLine"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 359
    const-class v0, Landroid/net/connectivity/org/chromium/base/CommandLine;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 359
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/base/CommandLine;-><init>(Landroid/net/connectivity/org/chromium/base/CommandLine-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/CommandLine-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/CommandLine$NativeCommandLine;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist appendSwitch(Ljava/lang/String;)V
    .registers 3
    .param p1, "switchString"    # Ljava/lang/String;

    .line 390
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/CommandLineJni;->get()Landroid/net/connectivity/org/chromium/base/CommandLine$Natives;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/net/connectivity/org/chromium/base/CommandLine$Natives;->appendSwitch(Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public blacklist appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "switchString"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 395
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/CommandLineJni;->get()Landroid/net/connectivity/org/chromium/base/CommandLine$Natives;

    move-result-object v0

    if-nez p2, :cond_9

    const-string v1, ""

    goto :goto_a

    :cond_9
    move-object v1, p2

    :goto_a
    invoke-interface {v0, p1, v1}, Landroid/net/connectivity/org/chromium/base/CommandLine$Natives;->appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method public blacklist appendSwitchesAndArguments([Ljava/lang/String;)V
    .registers 3
    .param p1, "array"    # [Ljava/lang/String;

    .line 400
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/CommandLineJni;->get()Landroid/net/connectivity/org/chromium/base/CommandLine$Natives;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/net/connectivity/org/chromium/base/CommandLine$Natives;->appendSwitchesAndArguments([Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method public blacklist getSwitchValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "switchString"    # Ljava/lang/String;

    .line 367
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/CommandLineJni;->get()Landroid/net/connectivity/org/chromium/base/CommandLine$Natives;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/net/connectivity/org/chromium/base/CommandLine$Natives;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "ret":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    goto :goto_11

    :cond_10
    move-object v1, v0

    :goto_11
    return-object v1
.end method

.method public blacklist getSwitches()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 373
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 378
    .local v0, "switches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/CommandLineJni;->get()Landroid/net/connectivity/org/chromium/base/CommandLine$Natives;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/connectivity/org/chromium/base/CommandLine$Natives;->getSwitchesFlattened()[Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "keysAndValues":[Ljava/lang/String;
    nop

    .line 380
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    array-length v3, v1

    if-ge v2, v3, :cond_1e

    .line 381
    aget-object v3, v1, v2

    .line 382
    .local v3, "key":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x1

    aget-object v4, v1, v4

    .line 383
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x2

    goto :goto_f

    .line 385
    .end local v2    # "i":I
    :cond_1e
    return-object v0
.end method

.method public blacklist hasSwitch(Ljava/lang/String;)Z
    .registers 3
    .param p1, "switchString"    # Ljava/lang/String;

    .line 362
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/CommandLineJni;->get()Landroid/net/connectivity/org/chromium/base/CommandLine$Natives;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/net/connectivity/org/chromium/base/CommandLine$Natives;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeSwitch(Ljava/lang/String;)V
    .registers 3
    .param p1, "switchString"    # Ljava/lang/String;

    .line 405
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/CommandLineJni;->get()Landroid/net/connectivity/org/chromium/base/CommandLine$Natives;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/net/connectivity/org/chromium/base/CommandLine$Natives;->removeSwitch(Ljava/lang/String;)V

    .line 406
    return-void
.end method
