.class public interface abstract Lorg/apache/xml/dtm/DTMIterator;
.super Ljava/lang/Object;
.source "DTMIterator.java"


# static fields
.field public static final greylist FILTER_ACCEPT:S = 0x1s

.field public static final greylist FILTER_REJECT:S = 0x2s

.field public static final greylist FILTER_SKIP:S = 0x3s


# virtual methods
.method public abstract greylist allowDetachToRelease(Z)V
.end method

.method public abstract whitelist test-api clone()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation
.end method

.method public abstract greylist cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation
.end method

.method public abstract greylist detach()V
.end method

.method public abstract greylist getAxis()I
.end method

.method public abstract greylist getCurrentNode()I
.end method

.method public abstract greylist getCurrentPos()I
.end method

.method public abstract greylist getDTM(I)Lorg/apache/xml/dtm/DTM;
.end method

.method public abstract greylist getDTMManager()Lorg/apache/xml/dtm/DTMManager;
.end method

.method public abstract greylist getExpandEntityReferences()Z
.end method

.method public abstract greylist getLength()I
.end method

.method public abstract greylist getRoot()I
.end method

.method public abstract greylist getWhatToShow()I
.end method

.method public abstract greylist isDocOrdered()Z
.end method

.method public abstract greylist isFresh()Z
.end method

.method public abstract greylist isMutable()Z
.end method

.method public abstract greylist item(I)I
.end method

.method public abstract greylist nextNode()I
.end method

.method public abstract greylist previousNode()I
.end method

.method public abstract greylist reset()V
.end method

.method public abstract greylist runTo(I)V
.end method

.method public abstract greylist setCurrentPos(I)V
.end method

.method public abstract greylist setItem(II)V
.end method

.method public abstract greylist setRoot(ILjava/lang/Object;)V
.end method

.method public abstract greylist setShouldCacheNodes(Z)V
.end method
