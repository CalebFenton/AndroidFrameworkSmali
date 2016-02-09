.class Ljava/util/ResourceBundle$SimpleControl;
.super Ljava/util/ResourceBundle$Control;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleControl"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    #@0
    .prologue
    .line 679
    invoke-direct {p0}, Ljava/util/ResourceBundle$Control;-><init>()V

    #@3
    .line 680
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    sput-object v0, Ljava/util/ResourceBundle$SimpleControl;->listClass:Ljava/util/List;

    #@a
    .line 681
    sget-object v0, Ljava/util/ResourceBundle$SimpleControl;->listClass:Ljava/util/List;

    #@c
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@f
    .line 682
    sget-object v0, Ljava/util/ResourceBundle$SimpleControl;->listClass:Ljava/util/List;

    #@11
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Ljava/util/ResourceBundle$Control;->format:Ljava/util/List;

    #@17
    .line 679
    return-void
.end method
