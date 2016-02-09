.class public final enum Lcom/google/android/maps/NetworkConnectivityListener$State;
.super Ljava/lang/Enum;
.source "MapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/NetworkConnectivityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/maps/NetworkConnectivityListener$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/maps/NetworkConnectivityListener$State;

.field public static final enum CONNECTED:Lcom/google/android/maps/NetworkConnectivityListener$State;

.field public static final enum NOT_CONNECTED:Lcom/google/android/maps/NetworkConnectivityListener$State;

.field public static final enum UNKNOWN:Lcom/google/android/maps/NetworkConnectivityListener$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 135
    new-instance v0, Lcom/google/android/maps/NetworkConnectivityListener$State;

    #@5
    const-string/jumbo v1, "UNKNOWN"

    #@8
    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/NetworkConnectivityListener$State;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Lcom/google/android/maps/NetworkConnectivityListener$State;->UNKNOWN:Lcom/google/android/maps/NetworkConnectivityListener$State;

    #@d
    .line 137
    new-instance v0, Lcom/google/android/maps/NetworkConnectivityListener$State;

    #@f
    const-string/jumbo v1, "CONNECTED"

    #@12
    invoke-direct {v0, v1, v3}, Lcom/google/android/maps/NetworkConnectivityListener$State;-><init>(Ljava/lang/String;I)V

    #@15
    .line 138
    sput-object v0, Lcom/google/android/maps/NetworkConnectivityListener$State;->CONNECTED:Lcom/google/android/maps/NetworkConnectivityListener$State;

    #@17
    .line 139
    new-instance v0, Lcom/google/android/maps/NetworkConnectivityListener$State;

    #@19
    const-string/jumbo v1, "NOT_CONNECTED"

    #@1c
    invoke-direct {v0, v1, v4}, Lcom/google/android/maps/NetworkConnectivityListener$State;-><init>(Ljava/lang/String;I)V

    #@1f
    .line 148
    sput-object v0, Lcom/google/android/maps/NetworkConnectivityListener$State;->NOT_CONNECTED:Lcom/google/android/maps/NetworkConnectivityListener$State;

    #@21
    .line 134
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Lcom/google/android/maps/NetworkConnectivityListener$State;

    #@24
    sget-object v1, Lcom/google/android/maps/NetworkConnectivityListener$State;->UNKNOWN:Lcom/google/android/maps/NetworkConnectivityListener$State;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Lcom/google/android/maps/NetworkConnectivityListener$State;->CONNECTED:Lcom/google/android/maps/NetworkConnectivityListener$State;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Lcom/google/android/maps/NetworkConnectivityListener$State;->NOT_CONNECTED:Lcom/google/android/maps/NetworkConnectivityListener$State;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Lcom/google/android/maps/NetworkConnectivityListener$State;->$VALUES:[Lcom/google/android/maps/NetworkConnectivityListener$State;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/maps/NetworkConnectivityListener$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 134
    const-class v0, Lcom/google/android/maps/NetworkConnectivityListener$State;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/maps/NetworkConnectivityListener$State;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/google/android/maps/NetworkConnectivityListener$State;
    .locals 1

    #@0
    .prologue
    .line 134
    sget-object v0, Lcom/google/android/maps/NetworkConnectivityListener$State;->$VALUES:[Lcom/google/android/maps/NetworkConnectivityListener$State;

    #@2
    return-object v0
.end method
