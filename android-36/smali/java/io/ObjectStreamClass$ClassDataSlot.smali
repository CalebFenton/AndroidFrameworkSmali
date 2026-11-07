.class Ljava/io/ObjectStreamClass$ClassDataSlot;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectStreamClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClassDataSlot"
.end annotation


# instance fields
.field final greylist-max-o desc:Ljava/io/ObjectStreamClass;

.field final greylist-max-o hasData:Z


# direct methods
.method constructor greylist-max-o <init>(Ljava/io/ObjectStreamClass;Z)V
    .registers 3
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .param p2, "hasData"    # Z

    .line 1230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1231
    iput-object p1, p0, Ljava/io/ObjectStreamClass$ClassDataSlot;->desc:Ljava/io/ObjectStreamClass;

    .line 1232
    iput-boolean p2, p0, Ljava/io/ObjectStreamClass$ClassDataSlot;->hasData:Z

    .line 1233
    return-void
.end method
