.class public Ljavax/sql/RowSetEvent;
.super Ljava/util/EventObject;
.source "RowSetEvent.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x1a06f0a2ba3d3565L


# direct methods
.method public constructor whitelist test-api <init>(Ljavax/sql/RowSet;)V
    .registers 2
    .param p1, "source"    # Ljavax/sql/RowSet;

    .line 55
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    return-void
.end method
