.class Lorg/apache/harmony/xml/dom/NodeImpl$UserData;
.super Ljava/lang/Object;
.source "NodeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/dom/NodeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UserData"
.end annotation


# instance fields
.field final handler:Lorg/w3c/dom/UserDataHandler;

.field final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "handler"    # Lorg/w3c/dom/UserDataHandler;

    #@0
    .prologue
    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 722
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;->value:Ljava/lang/Object;

    #@5
    .line 723
    iput-object p2, p0, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;->handler:Lorg/w3c/dom/UserDataHandler;

    #@7
    .line 721
    return-void
.end method
