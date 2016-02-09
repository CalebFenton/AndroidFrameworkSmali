.class public Lcom/android/commands/monkey/MonkeySourceNetworkVars;
.super Ljava/lang/Object;
.source "MonkeySourceNetworkVars.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/monkey/MonkeySourceNetworkVars$VarGetter;,
        Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;,
        Lcom/android/commands/monkey/MonkeySourceNetworkVars$ListVarCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetworkVars$GetVarCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetworkVars$1;,
        Lcom/android/commands/monkey/MonkeySourceNetworkVars$2;,
        Lcom/android/commands/monkey/MonkeySourceNetworkVars$3;,
        Lcom/android/commands/monkey/MonkeySourceNetworkVars$4;,
        Lcom/android/commands/monkey/MonkeySourceNetworkVars$5;,
        Lcom/android/commands/monkey/MonkeySourceNetworkVars$6;,
        Lcom/android/commands/monkey/MonkeySourceNetworkVars$7;,
        Lcom/android/commands/monkey/MonkeySourceNetworkVars$8;,
        Lcom/android/commands/monkey/MonkeySourceNetworkVars$9;,
        Lcom/android/commands/monkey/MonkeySourceNetworkVars$10;
    }
.end annotation


# static fields
.field private static final VAR_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/commands/monkey/MonkeySourceNetworkVars$VarGetter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/util/Map;
    .locals 1

    #@0
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    .line 61
    new-instance v2, Ljava/util/TreeMap;

    #@2
    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    #@5
    sput-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@7
    .line 64
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@9
    const-string/jumbo v3, "build.board"

    #@c
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    #@e
    sget-object v5, Landroid/os/Build;->BOARD:Ljava/lang/String;

    #@10
    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    #@13
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 65
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@18
    const-string/jumbo v3, "build.brand"

    #@1b
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    #@1d
    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    #@1f
    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    #@22
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    .line 66
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@27
    const-string/jumbo v3, "build.device"

    #@2a
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    #@2c
    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    #@2e
    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    #@31
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    .line 67
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@36
    const-string/jumbo v3, "build.display"

    #@39
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    #@3b
    sget-object v5, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    #@3d
    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    #@40
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    .line 68
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@45
    const-string/jumbo v3, "build.fingerprint"

    #@48
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    #@4a
    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    #@4c
    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    #@4f
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@52
    .line 69
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@54
    const-string/jumbo v3, "build.host"

    #@57
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    #@59
    sget-object v5, Landroid/os/Build;->HOST:Ljava/lang/String;

    #@5b
    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    #@5e
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@61
    .line 70
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@63
    const-string/jumbo v3, "build.id"

    #@66
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    #@68
    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    #@6a
    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    #@6d
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@70
    .line 71
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@72
    const-string/jumbo v3, "build.model"

    #@75
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    #@77
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    #@79
    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    #@7c
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7f
    .line 72
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@81
    const-string/jumbo v3, "build.product"

    #@84
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    #@86
    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    #@88
    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    #@8b
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8e
    .line 73
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@90
    const-string/jumbo v3, "build.tags"

    #@93
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    #@95
    sget-object v5, Landroid/os/Build;->TAGS:Ljava/lang/String;

    #@97
    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    #@9a
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9d
    .line 74
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@9f
    const-string/jumbo v3, "build.brand"

    #@a2
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    #@a4
    sget-wide v6, Landroid/os/Build;->TIME:J

    #@a6
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@a9
    move-result-object v5

    #@aa
    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    #@ad
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b0
    .line 75
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@b2
    const-string/jumbo v3, "build.type"

    #@b5
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    #@b7
    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    #@b9
    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    #@bc
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@bf
    .line 76
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@c1
    const-string/jumbo v3, "build.user"

    #@c4
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    #@c6
    sget-object v5, Landroid/os/Build;->USER:Ljava/lang/String;

    #@c8
    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    #@cb
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ce
    .line 77
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@d0
    const-string/jumbo v3, "build.cpu_abi"

    #@d3
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    #@d5
    sget-object v5, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    #@d7
    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    #@da
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@dd
    .line 78
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@df
    const-string/jumbo v3, "build.manufacturer"

    #@e2
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    #@e4
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    #@e6
    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    #@e9
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ec
    .line 79
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@ee
    const-string/jumbo v3, "build.version.incremental"

    #@f1
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    #@f3
    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    #@f5
    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    #@f8
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@fb
    .line 80
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@fd
    const-string/jumbo v3, "build.version.release"

    #@100
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    #@102
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    #@104
    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    #@107
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10a
    .line 81
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@10c
    const-string/jumbo v3, "build.version.sdk"

    #@10f
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    #@111
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    #@113
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@116
    move-result-object v5

    #@117
    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    #@11a
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11d
    .line 82
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@11f
    const-string/jumbo v3, "build.version.codename"

    #@122
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    #@124
    sget-object v5, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    #@126
    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    #@129
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12c
    .line 85
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    #@12f
    move-result-object v2

    #@130
    const/4 v3, 0x0

    #@131
    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    #@134
    move-result-object v0

    #@135
    .line 86
    .local v0, "display":Landroid/view/Display;
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@137
    const-string/jumbo v3, "display.width"

    #@13a
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    #@13c
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    #@13f
    move-result v5

    #@140
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@143
    move-result-object v5

    #@144
    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    #@147
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14a
    .line 87
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@14c
    const-string/jumbo v3, "display.height"

    #@14f
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    #@151
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    #@154
    move-result v5

    #@155
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@158
    move-result-object v5

    #@159
    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    #@15c
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15f
    .line 89
    new-instance v1, Landroid/util/DisplayMetrics;

    #@161
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    #@164
    .line 90
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    #@167
    .line 91
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@169
    const-string/jumbo v3, "display.density"

    #@16c
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    #@16e
    iget v5, v1, Landroid/util/DisplayMetrics;->density:F

    #@170
    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    #@173
    move-result-object v5

    #@174
    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    #@177
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17a
    .line 96
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@17c
    const-string/jumbo v3, "am.current.package"

    #@17f
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$1;

    #@181
    invoke-direct {v4}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$1;-><init>()V

    #@184
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@187
    .line 101
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@189
    const-string/jumbo v3, "am.current.action"

    #@18c
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$2;

    #@18e
    invoke-direct {v4}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$2;-><init>()V

    #@191
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@194
    .line 109
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@196
    const-string/jumbo v3, "am.current.comp.class"

    #@199
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$3;

    #@19b
    invoke-direct {v4}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$3;-><init>()V

    #@19e
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a1
    .line 117
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@1a3
    const-string/jumbo v3, "am.current.comp.package"

    #@1a6
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$4;

    #@1a8
    invoke-direct {v4}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$4;-><init>()V

    #@1ab
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ae
    .line 125
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@1b0
    const-string/jumbo v3, "am.current.data"

    #@1b3
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$5;

    #@1b5
    invoke-direct {v4}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$5;-><init>()V

    #@1b8
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1bb
    .line 133
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@1bd
    const-string/jumbo v3, "am.current.categories"

    #@1c0
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$6;

    #@1c2
    invoke-direct {v4}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$6;-><init>()V

    #@1c5
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c8
    .line 147
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@1ca
    const-string/jumbo v3, "clock.realtime"

    #@1cd
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$7;

    #@1cf
    invoke-direct {v4}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$7;-><init>()V

    #@1d2
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d5
    .line 152
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@1d7
    const-string/jumbo v3, "clock.uptime"

    #@1da
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$8;

    #@1dc
    invoke-direct {v4}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$8;-><init>()V

    #@1df
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e2
    .line 157
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@1e4
    const-string/jumbo v3, "clock.millis"

    #@1e7
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$9;

    #@1e9
    invoke-direct {v4}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$9;-><init>()V

    #@1ec
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ef
    .line 162
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    #@1f1
    const-string/jumbo v3, "monkey.version"

    #@1f4
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$10;

    #@1f6
    invoke-direct {v4}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$10;-><init>()V

    #@1f9
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1fc
    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
