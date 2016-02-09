.class public final enum Ljava/security/KeyRep$Type;
.super Ljava/lang/Enum;
.source "KeyRep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyRep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/security/KeyRep$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/security/KeyRep$Type;

.field public static final enum PRIVATE:Ljava/security/KeyRep$Type;

.field public static final enum PUBLIC:Ljava/security/KeyRep$Type;

.field public static final enum SECRET:Ljava/security/KeyRep$Type;


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
    .line 158
    new-instance v0, Ljava/security/KeyRep$Type;

    #@5
    const-string/jumbo v1, "SECRET"

    #@8
    invoke-direct {v0, v1, v2}, Ljava/security/KeyRep$Type;-><init>(Ljava/lang/String;I)V

    #@b
    .line 161
    sput-object v0, Ljava/security/KeyRep$Type;->SECRET:Ljava/security/KeyRep$Type;

    #@d
    .line 162
    new-instance v0, Ljava/security/KeyRep$Type;

    #@f
    const-string/jumbo v1, "PUBLIC"

    #@12
    invoke-direct {v0, v1, v3}, Ljava/security/KeyRep$Type;-><init>(Ljava/lang/String;I)V

    #@15
    .line 165
    sput-object v0, Ljava/security/KeyRep$Type;->PUBLIC:Ljava/security/KeyRep$Type;

    #@17
    .line 166
    new-instance v0, Ljava/security/KeyRep$Type;

    #@19
    const-string/jumbo v1, "PRIVATE"

    #@1c
    invoke-direct {v0, v1, v4}, Ljava/security/KeyRep$Type;-><init>(Ljava/lang/String;I)V

    #@1f
    .line 169
    sput-object v0, Ljava/security/KeyRep$Type;->PRIVATE:Ljava/security/KeyRep$Type;

    #@21
    .line 157
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Ljava/security/KeyRep$Type;

    #@24
    sget-object v1, Ljava/security/KeyRep$Type;->SECRET:Ljava/security/KeyRep$Type;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Ljava/security/KeyRep$Type;->PUBLIC:Ljava/security/KeyRep$Type;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Ljava/security/KeyRep$Type;->PRIVATE:Ljava/security/KeyRep$Type;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Ljava/security/KeyRep$Type;->$VALUES:[Ljava/security/KeyRep$Type;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 157
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/security/KeyRep$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 157
    const-class v0, Ljava/security/KeyRep$Type;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/security/KeyRep$Type;

    #@8
    return-object v0
.end method

.method public static values()[Ljava/security/KeyRep$Type;
    .locals 1

    #@0
    .prologue
    .line 157
    sget-object v0, Ljava/security/KeyRep$Type;->$VALUES:[Ljava/security/KeyRep$Type;

    #@2
    return-object v0
.end method
