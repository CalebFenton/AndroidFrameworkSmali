.class public final enum Ljava/net/Authenticator$RequestorType;
.super Ljava/lang/Enum;
.source "Authenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/Authenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/net/Authenticator$RequestorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/net/Authenticator$RequestorType;

.field public static final enum PROXY:Ljava/net/Authenticator$RequestorType;

.field public static final enum SERVER:Ljava/net/Authenticator$RequestorType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 274
    new-instance v0, Ljava/net/Authenticator$RequestorType;

    #@4
    const-string/jumbo v1, "PROXY"

    #@7
    invoke-direct {v0, v1, v2}, Ljava/net/Authenticator$RequestorType;-><init>(Ljava/lang/String;I)V

    #@a
    .line 277
    sput-object v0, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    #@c
    .line 279
    new-instance v0, Ljava/net/Authenticator$RequestorType;

    #@e
    const-string/jumbo v1, "SERVER"

    #@11
    invoke-direct {v0, v1, v3}, Ljava/net/Authenticator$RequestorType;-><init>(Ljava/lang/String;I)V

    #@14
    .line 282
    sput-object v0, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    #@16
    .line 272
    const/4 v0, 0x2

    #@17
    new-array v0, v0, [Ljava/net/Authenticator$RequestorType;

    #@19
    sget-object v1, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    #@1b
    aput-object v1, v0, v2

    #@1d
    sget-object v1, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    #@1f
    aput-object v1, v0, v3

    #@21
    sput-object v0, Ljava/net/Authenticator$RequestorType;->$VALUES:[Ljava/net/Authenticator$RequestorType;

    #@23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 272
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/net/Authenticator$RequestorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 272
    const-class v0, Ljava/net/Authenticator$RequestorType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/net/Authenticator$RequestorType;

    #@8
    return-object v0
.end method

.method public static values()[Ljava/net/Authenticator$RequestorType;
    .locals 1

    #@0
    .prologue
    .line 272
    sget-object v0, Ljava/net/Authenticator$RequestorType;->$VALUES:[Ljava/net/Authenticator$RequestorType;

    #@2
    return-object v0
.end method
