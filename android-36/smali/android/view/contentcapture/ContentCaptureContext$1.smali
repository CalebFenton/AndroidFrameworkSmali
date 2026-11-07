.class Landroid/view/contentcapture/ContentCaptureContext$1;
.super Ljava/lang/Object;
.source "ContentCaptureContext.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/ContentCaptureContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/contentcapture/ContentCaptureContext;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/contentcapture/ContentCaptureContext;
    .registers 15
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    .line 429
    .local v1, "hasClientContext":Z
    :goto_9
    const/4 v0, 0x0

    if-eqz v1, :cond_29

    .line 431
    const-class v2, Landroid/content/LocusId;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/LocusId;

    .line 432
    .local v2, "id":Landroid/content/LocusId;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 433
    .local v3, "extras":Landroid/os/Bundle;
    new-instance v4, Landroid/view/contentcapture/ContentCaptureContext$Builder;

    invoke-direct {v4, v2}, Landroid/view/contentcapture/ContentCaptureContext$Builder;-><init>(Landroid/content/LocusId;)V

    .line 434
    .local v4, "builder":Landroid/view/contentcapture/ContentCaptureContext$Builder;
    if-eqz v3, :cond_22

    invoke-virtual {v4, v3}, Landroid/view/contentcapture/ContentCaptureContext$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/contentcapture/ContentCaptureContext$Builder;

    .line 435
    :cond_22
    new-instance v5, Landroid/view/contentcapture/ContentCaptureContext;

    invoke-direct {v5, v4, v0}, Landroid/view/contentcapture/ContentCaptureContext;-><init>(Landroid/view/contentcapture/ContentCaptureContext$Builder;Landroid/view/contentcapture/ContentCaptureContext-IA;)V

    .line 436
    .end local v2    # "id":Landroid/content/LocusId;
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "builder":Landroid/view/contentcapture/ContentCaptureContext$Builder;
    .local v5, "clientContext":Landroid/view/contentcapture/ContentCaptureContext;
    move-object v7, v5

    goto :goto_2b

    .line 437
    .end local v5    # "clientContext":Landroid/view/contentcapture/ContentCaptureContext;
    :cond_29
    const/4 v5, 0x0

    move-object v7, v5

    .line 439
    .local v7, "clientContext":Landroid/view/contentcapture/ContentCaptureContext;
    :goto_2b
    const-class v2, Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/ComponentName;

    .line 440
    .local v9, "componentName":Landroid/content/ComponentName;
    if-nez v9, :cond_37

    .line 442
    return-object v7

    .line 444
    :cond_37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 445
    .local v10, "displayId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 446
    .local v11, "windowToken":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 447
    .local v12, "flags":I
    new-instance v8, Landroid/app/assist/ActivityId;

    invoke-direct {v8, p1}, Landroid/app/assist/ActivityId;-><init>(Landroid/os/Parcel;)V

    .line 449
    .local v8, "activityId":Landroid/app/assist/ActivityId;
    new-instance v6, Landroid/view/contentcapture/ContentCaptureContext;

    invoke-direct/range {v6 .. v12}, Landroid/view/contentcapture/ContentCaptureContext;-><init>(Landroid/view/contentcapture/ContentCaptureContext;Landroid/app/assist/ActivityId;Landroid/content/ComponentName;ILandroid/os/IBinder;I)V

    return-object v6
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 421
    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureContext$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/contentcapture/ContentCaptureContext;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/contentcapture/ContentCaptureContext;
    .registers 3
    .param p1, "size"    # I

    .line 457
    new-array v0, p1, [Landroid/view/contentcapture/ContentCaptureContext;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 421
    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureContext$1;->newArray(I)[Landroid/view/contentcapture/ContentCaptureContext;

    move-result-object p1

    return-object p1
.end method
