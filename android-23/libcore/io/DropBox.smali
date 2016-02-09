.class public final Llibcore/io/DropBox;
.super Ljava/lang/Object;
.source "DropBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/io/DropBox$Reporter;,
        Llibcore/io/DropBox$DefaultReporter;
    }
.end annotation


# static fields
.field private static volatile REPORTER:Llibcore/io/DropBox$Reporter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 24
    new-instance v0, Llibcore/io/DropBox$DefaultReporter;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Llibcore/io/DropBox$DefaultReporter;-><init>(Llibcore/io/DropBox$DefaultReporter;)V

    #@6
    sput-object v0, Llibcore/io/DropBox;->REPORTER:Llibcore/io/DropBox$Reporter;

    #@8
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addData(Ljava/lang/String;[BI)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 66
    invoke-static {}, Llibcore/io/DropBox;->getReporter()Llibcore/io/DropBox$Reporter;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p0, p1, p2}, Llibcore/io/DropBox$Reporter;->addData(Ljava/lang/String;[BI)V

    #@7
    .line 65
    return-void
.end method

.method public static addText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 70
    invoke-static {}, Llibcore/io/DropBox;->getReporter()Llibcore/io/DropBox$Reporter;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p0, p1}, Llibcore/io/DropBox$Reporter;->addText(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 69
    return-void
.end method

.method public static getReporter()Llibcore/io/DropBox$Reporter;
    .locals 1

    #@0
    .prologue
    .line 40
    sget-object v0, Llibcore/io/DropBox;->REPORTER:Llibcore/io/DropBox$Reporter;

    #@2
    return-object v0
.end method

.method public static setReporter(Llibcore/io/DropBox$Reporter;)V
    .locals 2
    .param p0, "reporter"    # Llibcore/io/DropBox$Reporter;

    #@0
    .prologue
    .line 30
    if-nez p0, :cond_0

    #@2
    .line 31
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "reporter == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 33
    :cond_0
    sput-object p0, Llibcore/io/DropBox;->REPORTER:Llibcore/io/DropBox$Reporter;

    #@d
    .line 29
    return-void
.end method
