.class final Landroid/net/metrics/ApfProgramEvent$Decoder;
.super Ljava/lang/Object;
.source "ApfProgramEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/ApfProgramEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Decoder"
.end annotation


# static fields
.field static final greylist-max-o constants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 248
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/net/metrics/ApfProgramEvent;

    aput-object v2, v0, v1

    const-string v1, "FLAG_"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-static {v0, v1}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Landroid/net/metrics/ApfProgramEvent$Decoder;->constants:Landroid/util/SparseArray;

    .line 248
    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 1

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
