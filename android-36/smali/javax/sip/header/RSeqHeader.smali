.class public interface abstract Ljavax/sip/header/RSeqHeader;
.super Ljava/lang/Object;
.source "RSeqHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "RSeq"


# virtual methods
.method public abstract blacklist getSeqNumber()J
.end method

.method public abstract blacklist getSequenceNumber()I
.end method

.method public abstract blacklist setSeqNumber(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist setSequenceNumber(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method
