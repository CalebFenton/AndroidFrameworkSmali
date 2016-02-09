.class final enum Lcom/android/server/am/ActivityStack$ActivityState;
.super Ljava/lang/Enum;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ActivityState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/am/ActivityStack$ActivityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/am/ActivityStack$ActivityState;

.field public static final enum DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

.field public static final enum DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

.field public static final enum FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

.field public static final enum INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

.field public static final enum PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

.field public static final enum PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

.field public static final enum RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

.field public static final enum STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

.field public static final enum STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 139
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityState;

    #@7
    const-string/jumbo v1, "INITIALIZING"

    #@a
    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack$ActivityState;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@f
    .line 140
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityState;

    #@11
    const-string/jumbo v1, "RESUMED"

    #@14
    invoke-direct {v0, v1, v4}, Lcom/android/server/am/ActivityStack$ActivityState;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@19
    .line 141
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityState;

    #@1b
    const-string/jumbo v1, "PAUSING"

    #@1e
    invoke-direct {v0, v1, v5}, Lcom/android/server/am/ActivityStack$ActivityState;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@23
    .line 142
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityState;

    #@25
    const-string/jumbo v1, "PAUSED"

    #@28
    invoke-direct {v0, v1, v6}, Lcom/android/server/am/ActivityStack$ActivityState;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@2d
    .line 143
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityState;

    #@2f
    const-string/jumbo v1, "STOPPING"

    #@32
    invoke-direct {v0, v1, v7}, Lcom/android/server/am/ActivityStack$ActivityState;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@37
    .line 144
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityState;

    #@39
    const-string/jumbo v1, "STOPPED"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack$ActivityState;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@42
    .line 145
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityState;

    #@44
    const-string/jumbo v1, "FINISHING"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack$ActivityState;-><init>(Ljava/lang/String;I)V

    #@4b
    sput-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@4d
    .line 146
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityState;

    #@4f
    const-string/jumbo v1, "DESTROYING"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack$ActivityState;-><init>(Ljava/lang/String;I)V

    #@56
    sput-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@58
    .line 147
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityState;

    #@5a
    const-string/jumbo v1, "DESTROYED"

    #@5d
    const/16 v2, 0x8

    #@5f
    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack$ActivityState;-><init>(Ljava/lang/String;I)V

    #@62
    sput-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@64
    .line 138
    const/16 v0, 0x9

    #@66
    new-array v0, v0, [Lcom/android/server/am/ActivityStack$ActivityState;

    #@68
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@6a
    aput-object v1, v0, v3

    #@6c
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@6e
    aput-object v1, v0, v4

    #@70
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@72
    aput-object v1, v0, v5

    #@74
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@76
    aput-object v1, v0, v6

    #@78
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@7a
    aput-object v1, v0, v7

    #@7c
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@7e
    const/4 v2, 0x5

    #@7f
    aput-object v1, v0, v2

    #@81
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@83
    const/4 v2, 0x6

    #@84
    aput-object v1, v0, v2

    #@86
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@88
    const/4 v2, 0x7

    #@89
    aput-object v1, v0, v2

    #@8b
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@8d
    const/16 v2, 0x8

    #@8f
    aput-object v1, v0, v2

    #@91
    sput-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->$VALUES:[Lcom/android/server/am/ActivityStack$ActivityState;

    #@93
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/ActivityStack$ActivityState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 138
    const-class v0, Lcom/android/server/am/ActivityStack$ActivityState;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/am/ActivityStack$ActivityState;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/server/am/ActivityStack$ActivityState;
    .locals 1

    #@0
    .prologue
    .line 138
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->$VALUES:[Lcom/android/server/am/ActivityStack$ActivityState;

    #@2
    return-object v0
.end method
