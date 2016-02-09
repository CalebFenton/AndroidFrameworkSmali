.class final Lcom/android/server/DropBoxManagerService$FileList;
.super Ljava/lang/Object;
.source "DropBoxManagerService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DropBoxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/DropBoxManagerService$FileList;",
        ">;"
    }
.end annotation


# instance fields
.field public blocks:I

.field public final contents:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/android/server/DropBoxManagerService$EntryFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 453
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    #@6
    .line 454
    new-instance v0, Ljava/util/TreeSet;

    #@8
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    #@d
    .line 452
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DropBoxManagerService$FileList;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService$FileList;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public final compareTo(Lcom/android/server/DropBoxManagerService$FileList;)I
    .locals 3
    .param p1, "o"    # Lcom/android/server/DropBoxManagerService$FileList;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 458
    iget v0, p0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    #@3
    iget v1, p1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    #@5
    if-eq v0, v1, :cond_0

    #@7
    iget v0, p1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    #@9
    iget v1, p0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    #@b
    sub-int/2addr v0, v1

    #@c
    return v0

    #@d
    .line 459
    :cond_0
    if-ne p0, p1, :cond_1

    #@f
    return v2

    #@10
    .line 460
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$FileList;->hashCode()I

    #@13
    move-result v0

    #@14
    invoke-virtual {p1}, Lcom/android/server/DropBoxManagerService$FileList;->hashCode()I

    #@17
    move-result v1

    #@18
    if-ge v0, v1, :cond_2

    #@1a
    const/4 v0, -0x1

    #@1b
    return v0

    #@1c
    .line 461
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$FileList;->hashCode()I

    #@1f
    move-result v0

    #@20
    invoke-virtual {p1}, Lcom/android/server/DropBoxManagerService$FileList;->hashCode()I

    #@23
    move-result v1

    #@24
    if-le v0, v1, :cond_3

    #@26
    const/4 v0, 0x1

    #@27
    return v0

    #@28
    .line 462
    :cond_3
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 457
    check-cast p1, Lcom/android/server/DropBoxManagerService$FileList;

    #@2
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService$FileList;->compareTo(Lcom/android/server/DropBoxManagerService$FileList;)I

    #@5
    move-result v0

    #@6
    return v0
.end method
