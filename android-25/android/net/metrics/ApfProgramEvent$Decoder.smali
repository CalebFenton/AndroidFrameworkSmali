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
.field static final constants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 133
    new-array v0, v2, [Ljava/lang/Class;

    #@4
    const-class v1, Landroid/net/metrics/ApfProgramEvent;

    #@6
    aput-object v1, v0, v3

    #@8
    new-array v1, v2, [Ljava/lang/String;

    #@a
    const-string/jumbo v2, "FLAG_"

    #@d
    aput-object v2, v1, v3

    #@f
    .line 132
    invoke-static {v0, v1}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;

    #@12
    move-result-object v0

    #@13
    .line 131
    sput-object v0, Landroid/net/metrics/ApfProgramEvent$Decoder;->constants:Landroid/util/SparseArray;

    #@15
    .line 130
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
