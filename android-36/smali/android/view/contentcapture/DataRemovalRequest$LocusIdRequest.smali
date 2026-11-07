.class public final Landroid/view/contentcapture/DataRemovalRequest$LocusIdRequest;
.super Ljava/lang/Object;
.source "DataRemovalRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/DataRemovalRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocusIdRequest"
.end annotation


# instance fields
.field private final blacklist mFlags:I

.field private final blacklist mLocusId:Landroid/content/LocusId;


# direct methods
.method private constructor blacklist <init>(Landroid/view/contentcapture/DataRemovalRequest;Landroid/content/LocusId;I)V
    .registers 4
    .param p1, "this$0"    # Landroid/view/contentcapture/DataRemovalRequest;
    .param p2, "locusId"    # Landroid/content/LocusId;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p2, p0, Landroid/view/contentcapture/DataRemovalRequest$LocusIdRequest;->mLocusId:Landroid/content/LocusId;

    .line 224
    iput p3, p0, Landroid/view/contentcapture/DataRemovalRequest$LocusIdRequest;->mFlags:I

    .line 225
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/contentcapture/DataRemovalRequest;Landroid/content/LocusId;ILandroid/view/contentcapture/DataRemovalRequest-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/contentcapture/DataRemovalRequest$LocusIdRequest;-><init>(Landroid/view/contentcapture/DataRemovalRequest;Landroid/content/LocusId;I)V

    return-void
.end method


# virtual methods
.method public whitelist getFlags()I
    .registers 2

    .line 242
    iget v0, p0, Landroid/view/contentcapture/DataRemovalRequest$LocusIdRequest;->mFlags:I

    return v0
.end method

.method public whitelist getLocusId()Landroid/content/LocusId;
    .registers 2

    .line 232
    iget-object v0, p0, Landroid/view/contentcapture/DataRemovalRequest$LocusIdRequest;->mLocusId:Landroid/content/LocusId;

    return-object v0
.end method
