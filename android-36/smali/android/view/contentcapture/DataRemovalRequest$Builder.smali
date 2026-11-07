.class public final Landroid/view/contentcapture/DataRemovalRequest$Builder;
.super Ljava/lang/Object;
.source "DataRemovalRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/DataRemovalRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDestroyed:Z

.field private blacklist mFlags:Landroid/util/IntArray;

.field private blacklist mForEverything:Z

.field private blacklist mLocusIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/LocusId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/view/contentcapture/DataRemovalRequest$Builder;)Landroid/util/IntArray;
    .registers 1

    iget-object p0, p0, Landroid/view/contentcapture/DataRemovalRequest$Builder;->mFlags:Landroid/util/IntArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmForEverything(Landroid/view/contentcapture/DataRemovalRequest$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/contentcapture/DataRemovalRequest$Builder;->mForEverything:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocusIds(Landroid/view/contentcapture/DataRemovalRequest$Builder;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/view/contentcapture/DataRemovalRequest$Builder;->mLocusIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist throwIfDestroyed()V
    .registers 3

    .line 175
    iget-boolean v0, p0, Landroid/view/contentcapture/DataRemovalRequest$Builder;->mDestroyed:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Already destroyed!"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 176
    return-void
.end method


# virtual methods
.method public whitelist addLocusId(Landroid/content/LocusId;I)Landroid/view/contentcapture/DataRemovalRequest$Builder;
    .registers 5
    .param p1, "locusId"    # Landroid/content/LocusId;
    .param p2, "flags"    # I

    .line 145
    invoke-direct {p0}, Landroid/view/contentcapture/DataRemovalRequest$Builder;->throwIfDestroyed()V

    .line 146
    iget-boolean v0, p0, Landroid/view/contentcapture/DataRemovalRequest$Builder;->mForEverything:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Already is for everything"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 147
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Landroid/view/contentcapture/DataRemovalRequest$Builder;->mLocusIds:Ljava/util/ArrayList;

    if-nez v0, :cond_21

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/contentcapture/DataRemovalRequest$Builder;->mLocusIds:Ljava/util/ArrayList;

    .line 152
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/view/contentcapture/DataRemovalRequest$Builder;->mFlags:Landroid/util/IntArray;

    .line 155
    :cond_21
    iget-object v0, p0, Landroid/view/contentcapture/DataRemovalRequest$Builder;->mLocusIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Landroid/view/contentcapture/DataRemovalRequest$Builder;->mFlags:Landroid/util/IntArray;

    invoke-virtual {v0, p2}, Landroid/util/IntArray;->add(I)V

    .line 157
    return-object p0
.end method

.method public whitelist build()Landroid/view/contentcapture/DataRemovalRequest;
    .registers 4

    .line 165
    invoke-direct {p0}, Landroid/view/contentcapture/DataRemovalRequest$Builder;->throwIfDestroyed()V

    .line 167
    iget-boolean v0, p0, Landroid/view/contentcapture/DataRemovalRequest$Builder;->mForEverything:Z

    const/4 v1, 0x1

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/view/contentcapture/DataRemovalRequest$Builder;->mLocusIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    move v0, v1

    :goto_10
    const-string v2, "must call either #forEverything() or add one #addLocusId()"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 170
    iput-boolean v1, p0, Landroid/view/contentcapture/DataRemovalRequest$Builder;->mDestroyed:Z

    .line 171
    new-instance v0, Landroid/view/contentcapture/DataRemovalRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/contentcapture/DataRemovalRequest;-><init>(Landroid/view/contentcapture/DataRemovalRequest$Builder;Landroid/view/contentcapture/DataRemovalRequest-IA;)V

    return-object v0
.end method

.method public whitelist forEverything()Landroid/view/contentcapture/DataRemovalRequest$Builder;
    .registers 4

    .line 128
    invoke-direct {p0}, Landroid/view/contentcapture/DataRemovalRequest$Builder;->throwIfDestroyed()V

    .line 129
    iget-object v0, p0, Landroid/view/contentcapture/DataRemovalRequest$Builder;->mLocusIds:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const-string v2, "Already added LocusIds"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 131
    iput-boolean v1, p0, Landroid/view/contentcapture/DataRemovalRequest$Builder;->mForEverything:Z

    .line 132
    return-object p0
.end method
