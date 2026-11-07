.class Landroid/media/internal/guava_common/collect/ImmutableList$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SerializedForm"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J


# instance fields
.field final blacklist elements:[Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>([Ljava/lang/Object;)V
    .registers 2

    .line 703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 704
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/ImmutableList$SerializedForm;->elements:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method whitelist readResolve()Ljava/lang/Object;
    .registers 1

    .line 708
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableList$SerializedForm;->elements:[Ljava/lang/Object;

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method
