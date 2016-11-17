.class public final enum Ljava/net/StandardProtocolFamily;
.super Ljava/lang/Enum;
.source "StandardProtocolFamily.java"

# interfaces
.implements Ljava/net/ProtocolFamily;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/net/StandardProtocolFamily;",
        ">;",
        "Ljava/net/ProtocolFamily;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/net/StandardProtocolFamily;

.field public static final enum INET:Ljava/net/StandardProtocolFamily;

.field public static final enum INET6:Ljava/net/StandardProtocolFamily;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 36
    new-instance v0, Ljava/net/StandardProtocolFamily;

    #@4
    const-string/jumbo v1, "INET"

    #@7
    invoke-direct {v0, v1, v2}, Ljava/net/StandardProtocolFamily;-><init>(Ljava/lang/String;I)V

    #@a
    .line 39
    sput-object v0, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    #@c
    .line 41
    new-instance v0, Ljava/net/StandardProtocolFamily;

    #@e
    const-string/jumbo v1, "INET6"

    #@11
    invoke-direct {v0, v1, v3}, Ljava/net/StandardProtocolFamily;-><init>(Ljava/lang/String;I)V

    #@14
    .line 44
    sput-object v0, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    #@16
    .line 34
    const/4 v0, 0x2

    #@17
    new-array v0, v0, [Ljava/net/StandardProtocolFamily;

    #@19
    sget-object v1, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    #@1b
    aput-object v1, v0, v2

    #@1d
    sget-object v1, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    #@1f
    aput-object v1, v0, v3

    #@21
    sput-object v0, Ljava/net/StandardProtocolFamily;->$VALUES:[Ljava/net/StandardProtocolFamily;

    #@23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/net/StandardProtocolFamily;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 34
    const-class v0, Ljava/net/StandardProtocolFamily;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/net/StandardProtocolFamily;

    #@8
    return-object v0
.end method

.method public static values()[Ljava/net/StandardProtocolFamily;
    .locals 1

    #@0
    .prologue
    .line 34
    sget-object v0, Ljava/net/StandardProtocolFamily;->$VALUES:[Ljava/net/StandardProtocolFamily;

    #@2
    return-object v0
.end method
