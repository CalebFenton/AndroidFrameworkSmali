.class public Lorg/apache/xpath/axes/RTFIterator;
.super Lorg/apache/xpath/NodeSetDTM;
.source "RTFIterator.java"


# static fields
.field static final serialVersionUID:J = 0x6a47192b9016f2e4L


# direct methods
.method public constructor <init>(ILorg/apache/xml/dtm/DTMManager;)V
    .locals 0
    .param p1, "root"    # I
    .param p2, "manager"    # Lorg/apache/xml/dtm/DTMManager;

    #@0
    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/apache/xpath/NodeSetDTM;-><init>(ILorg/apache/xml/dtm/DTMManager;)V

    #@3
    .line 39
    return-void
.end method
