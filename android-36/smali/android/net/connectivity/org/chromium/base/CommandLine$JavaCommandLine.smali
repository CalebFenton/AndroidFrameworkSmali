.class Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;
.super Landroid/net/connectivity/org/chromium/base/CommandLine;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/CommandLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JavaCommandLine"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist mArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mArgsBegin:I

.field private blacklist mSwitches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 249
    const-class v0, Landroid/net/connectivity/org/chromium/base/CommandLine;

    return-void
.end method

.method constructor blacklist <init>([Ljava/lang/String;)V
    .registers 5
    .param p1, "args"    # [Ljava/lang/String;

    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/base/CommandLine;-><init>(Landroid/net/connectivity/org/chromium/base/CommandLine-IA;)V

    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;->mSwitches:Ljava/util/HashMap;

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;->mArgs:Ljava/util/ArrayList;

    .line 255
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;->mArgsBegin:I

    .line 258
    if-eqz p1, :cond_2b

    array-length v1, p1

    if-eqz v1, :cond_2b

    const/4 v1, 0x0

    aget-object v2, p1, v1

    if-nez v2, :cond_20

    goto :goto_2b

    .line 261
    :cond_20
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;->mArgs:Ljava/util/ArrayList;

    aget-object v1, p1, v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-direct {p0, p1, v0}, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;->appendSwitchesInternal([Ljava/lang/String;I)V

    goto :goto_32

    .line 259
    :cond_2b
    :goto_2b
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;->mArgs:Ljava/util/ArrayList;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    :goto_32
    nop

    .line 266
    return-void
.end method

.method private blacklist appendSwitchesInternal([Ljava/lang/String;I)V
    .registers 12
    .param p1, "array"    # [Ljava/lang/String;
    .param p2, "skipCount"    # I

    .line 321
    const/4 v0, 0x1

    .line 322
    .local v0, "parseSwitches":Z
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_4
    if-ge v3, v1, :cond_43

    aget-object v4, p1, v3

    .line 323
    .local v4, "arg":Ljava/lang/String;
    if-lez p2, :cond_d

    .line 324
    add-int/lit8 p2, p2, -0x1

    .line 325
    goto :goto_40

    .line 328
    :cond_d
    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 329
    const/4 v0, 0x0

    .line 332
    :cond_16
    if-eqz v0, :cond_3b

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 333
    const-string v6, "="

    const/4 v7, 0x2

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 334
    .local v6, "parts":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x1

    if-le v7, v8, :cond_2c

    aget-object v7, v6, v8

    goto :goto_2d

    :cond_2c
    const/4 v7, 0x0

    .line 335
    .local v7, "value":Ljava/lang/String;
    :goto_2d
    aget-object v8, v6, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v7}, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;->appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .end local v6    # "parts":[Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    goto :goto_40

    .line 337
    :cond_3b
    iget-object v5, p0, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;->mArgs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    .end local v4    # "arg":Ljava/lang/String;
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 340
    :cond_43
    return-void
.end method


# virtual methods
.method public blacklist appendSwitch(Ljava/lang/String;)V
    .registers 3
    .param p1, "switchString"    # Ljava/lang/String;

    .line 292
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;->appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public blacklist appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "switchString"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 303
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;->mSwitches:Ljava/util/HashMap;

    if-nez p2, :cond_7

    const-string v1, ""

    goto :goto_8

    :cond_7
    move-object v1, p2

    :goto_8
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "combinedSwitchString":Ljava/lang/String;
    if-eqz p2, :cond_3d

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    :cond_3d
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;->mArgs:Ljava/util/ArrayList;

    iget v2, p0, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;->mArgsBegin:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;->mArgsBegin:I

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 312
    return-void
.end method

.method public blacklist appendSwitchesAndArguments([Ljava/lang/String;)V
    .registers 3
    .param p1, "array"    # [Ljava/lang/String;

    .line 316
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;->appendSwitchesInternal([Ljava/lang/String;I)V

    .line 317
    return-void
.end method

.method blacklist getCommandLineArguments()[Ljava/lang/String;
    .registers 3

    .line 269
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;->mArgs:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;->mArgs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSwitchValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "switchString"    # Ljava/lang/String;

    .line 281
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;->mSwitches:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 282
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 287
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;->mSwitches:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public blacklist hasSwitch(Ljava/lang/String;)Z
    .registers 3
    .param p1, "switchString"    # Ljava/lang/String;

    .line 274
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;->mSwitches:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeSwitch(Ljava/lang/String;)V
    .registers 7
    .param p1, "switchString"    # Ljava/lang/String;

    .line 344
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;->mSwitches:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "combinedSwitchString":Ljava/lang/String;
    iget v1, p0, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;->mArgsBegin:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1c
    if-lez v1, :cond_5b

    .line 350
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;->mArgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;->mArgs:Ljava/util/ArrayList;

    .line 351
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 352
    :cond_4d
    iget v2, p0, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;->mArgsBegin:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;->mArgsBegin:I

    .line 353
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;->mArgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 349
    :cond_58
    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    .line 356
    .end local v1    # "i":I
    :cond_5b
    return-void
.end method
