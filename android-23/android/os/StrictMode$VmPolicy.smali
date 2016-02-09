.class public final Landroid/os/StrictMode$VmPolicy;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VmPolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/StrictMode$VmPolicy$Builder;
    }
.end annotation


# static fields
.field public static final LAX:Landroid/os/StrictMode$VmPolicy;


# instance fields
.field final classInstanceLimit:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 606
    new-instance v0, Landroid/os/StrictMode$VmPolicy;

    #@2
    invoke-static {}, Landroid/os/StrictMode;->-get0()Ljava/util/HashMap;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {v0, v2, v1}, Landroid/os/StrictMode$VmPolicy;-><init>(ILjava/util/HashMap;)V

    #@a
    sput-object v0, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    #@c
    .line 602
    return-void
.end method

.method private constructor <init>(ILjava/util/HashMap;)V
    .locals 2
    .param p1, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 613
    .local p2, "classInstanceLimit":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 614
    if-nez p2, :cond_0

    #@5
    .line 615
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "classInstanceLimit == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 617
    :cond_0
    iput p1, p0, Landroid/os/StrictMode$VmPolicy;->mask:I

    #@10
    .line 618
    iput-object p2, p0, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    #@12
    .line 613
    return-void
.end method

.method synthetic constructor <init>(ILjava/util/HashMap;Landroid/os/StrictMode$VmPolicy;)V
    .locals 0
    .param p1, "mask"    # I
    .param p2, "classInstanceLimit"    # Ljava/util/HashMap;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/os/StrictMode$VmPolicy;-><init>(ILjava/util/HashMap;)V

    #@3
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "[StrictMode.VmPolicy; mask="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/os/StrictMode$VmPolicy;->mask:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "]"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method
