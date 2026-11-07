.class public Lorg/apache/xpath/operations/Gt;
.super Lorg/apache/xpath/operations/Operation;
.source "Gt.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x7be35ad38c26520eL


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lorg/apache/xpath/operations/Operation;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist operate(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/XObject;)Lorg/apache/xpath/objects/XObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 47
    invoke-virtual {p1, p2}, Lorg/apache/xpath/objects/XObject;->greaterThan(Lorg/apache/xpath/objects/XObject;)Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;

    return-object p0

    :cond_9
    sget-object p0, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    return-object p0
.end method
