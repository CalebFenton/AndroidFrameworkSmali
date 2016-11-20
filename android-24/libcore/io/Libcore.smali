.class public final Llibcore/io/Libcore;
.super Ljava/lang/Object;
.source "Libcore.java"


# static fields
.field public static os:Llibcore/io/Os;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 22
    new-instance v0, Llibcore/io/BlockGuardOs;

    #@2
    new-instance v1, Llibcore/io/Posix;

    #@4
    invoke-direct {v1}, Llibcore/io/Posix;-><init>()V

    #@7
    invoke-direct {v0, v1}, Llibcore/io/BlockGuardOs;-><init>(Llibcore/io/Os;)V

    #@a
    sput-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@c
    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
