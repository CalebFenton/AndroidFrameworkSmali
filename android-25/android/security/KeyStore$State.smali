.class public final enum Landroid/security/KeyStore$State;
.super Ljava/lang/Enum;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/security/KeyStore$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/security/KeyStore$State;

.field public static final enum LOCKED:Landroid/security/KeyStore$State;

.field public static final enum UNINITIALIZED:Landroid/security/KeyStore$State;

.field public static final enum UNLOCKED:Landroid/security/KeyStore$State;


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
    .line 97
    new-instance v0, Landroid/security/KeyStore$State;

    #@5
    const-string/jumbo v1, "UNLOCKED"

    #@8
    invoke-direct {v0, v1, v2}, Landroid/security/KeyStore$State;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    #@d
    new-instance v0, Landroid/security/KeyStore$State;

    #@f
    const-string/jumbo v1, "LOCKED"

    #@12
    invoke-direct {v0, v1, v3}, Landroid/security/KeyStore$State;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    #@17
    new-instance v0, Landroid/security/KeyStore$State;

    #@19
    const-string/jumbo v1, "UNINITIALIZED"

    #@1c
    invoke-direct {v0, v1, v4}, Landroid/security/KeyStore$State;-><init>(Ljava/lang/String;I)V

    #@1f
    sput-object v0, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    #@21
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Landroid/security/KeyStore$State;

    #@24
    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Landroid/security/KeyStore$State;->$VALUES:[Landroid/security/KeyStore$State;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/security/KeyStore$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 97
    const-class v0, Landroid/security/KeyStore$State;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/security/KeyStore$State;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/security/KeyStore$State;
    .locals 1

    #@0
    .prologue
    .line 97
    sget-object v0, Landroid/security/KeyStore$State;->$VALUES:[Landroid/security/KeyStore$State;

    #@2
    return-object v0
.end method
