.class final Lsun/nio/ch/ExtendedSocketOption$1;
.super Ljava/lang/Object;
.source "ExtendedSocketOption.java"

# interfaces
.implements Ljava/net/SocketOption;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/ExtendedSocketOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/net/SocketOption",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 40
    const-string/jumbo v0, "SO_OOBINLINE"

    #@3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 42
    invoke-virtual {p0}, Lsun/nio/ch/ExtendedSocketOption$1;->name()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public type()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 41
    const-class v0, Ljava/lang/Boolean;

    #@2
    return-object v0
.end method
