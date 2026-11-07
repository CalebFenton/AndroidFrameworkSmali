.class Landroid/service/autofill/Dataset$1;
.super Ljava/lang/Object;
.source "Dataset.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/Dataset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/Dataset;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/Dataset;
    .registers 32
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 1416
    move-object/from16 v0, p1

    const-class v1, Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 1418
    .local v1, "presentation":Landroid/widget/RemoteViews;
    const-class v3, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    .line 1420
    .local v3, "dialogPresentation":Landroid/widget/RemoteViews;
    const-class v4, Landroid/service/autofill/InlinePresentation;

    invoke-virtual {v0, v2, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/InlinePresentation;

    .line 1422
    .local v4, "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    const-class v5, Landroid/service/autofill/InlinePresentation;

    .line 1423
    invoke-virtual {v0, v2, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/autofill/InlinePresentation;

    .line 1424
    .local v5, "inlineTooltipPresentation":Landroid/service/autofill/InlinePresentation;
    sget-object v6, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1425
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1426
    .local v6, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    sget-object v7, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1427
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1428
    .local v7, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    sget-object v8, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1429
    invoke-virtual {v0, v8}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1430
    .local v8, "presentations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews;>;"
    sget-object v9, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1431
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1432
    .local v9, "dialogPresentations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews;>;"
    sget-object v10, Landroid/service/autofill/InlinePresentation;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1433
    invoke-virtual {v0, v10}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1434
    .local v10, "inlinePresentations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/InlinePresentation;>;"
    sget-object v11, Landroid/service/autofill/InlinePresentation;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1435
    invoke-virtual {v0, v11}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1436
    .local v11, "inlineTooltipPresentations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/InlinePresentation;>;"
    sget-object v12, Landroid/service/autofill/Dataset$DatasetFieldFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1437
    invoke-virtual {v0, v12}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v12

    .line 1438
    .local v12, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/Dataset$DatasetFieldFilter;>;"
    nop

    .line 1439
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 1440
    .local v13, "autofillDatatypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-class v14, Landroid/content/ClipData;

    invoke-virtual {v0, v2, v14}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ClipData;

    .line 1442
    .local v14, "fieldContent":Landroid/content/ClipData;
    const-class v15, Landroid/content/IntentSender;

    invoke-virtual {v0, v2, v15}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/IntentSender;

    .line 1444
    .local v15, "authentication":Landroid/content/IntentSender;
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1445
    .local v2, "datasetId":Ljava/lang/String;
    move-object/from16 v17, v2

    .end local v2    # "datasetId":Ljava/lang/String;
    .local v17, "datasetId":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1446
    .local v2, "eligibleReason":I
    move/from16 v18, v2

    .end local v2    # "eligibleReason":I
    .local v18, "eligibleReason":I
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1452
    .local v2, "credentialFillInIntent":Landroid/content/Intent;
    if-nez v1, :cond_87

    if-nez v4, :cond_87

    if-eqz v3, :cond_7d

    goto :goto_87

    .line 1468
    :cond_7d
    new-instance v19, Landroid/service/autofill/Dataset$Builder;

    invoke-direct/range {v19 .. v19}, Landroid/service/autofill/Dataset$Builder;-><init>()V

    move-object/from16 v20, v1

    move-object/from16 v0, v19

    .local v19, "builder":Landroid/service/autofill/Dataset$Builder;
    goto :goto_b7

    .line 1453
    .end local v19    # "builder":Landroid/service/autofill/Dataset$Builder;
    :cond_87
    :goto_87
    new-instance v19, Landroid/service/autofill/Presentations$Builder;

    invoke-direct/range {v19 .. v19}, Landroid/service/autofill/Presentations$Builder;-><init>()V

    move-object/from16 v20, v19

    .line 1454
    .local v20, "presentationsBuilder":Landroid/service/autofill/Presentations$Builder;
    if-eqz v1, :cond_96

    .line 1455
    move-object/from16 v0, v20

    .end local v20    # "presentationsBuilder":Landroid/service/autofill/Presentations$Builder;
    .local v0, "presentationsBuilder":Landroid/service/autofill/Presentations$Builder;
    invoke-virtual {v0, v1}, Landroid/service/autofill/Presentations$Builder;->setMenuPresentation(Landroid/widget/RemoteViews;)Landroid/service/autofill/Presentations$Builder;

    goto :goto_98

    .line 1454
    .end local v0    # "presentationsBuilder":Landroid/service/autofill/Presentations$Builder;
    .restart local v20    # "presentationsBuilder":Landroid/service/autofill/Presentations$Builder;
    :cond_96
    move-object/from16 v0, v20

    .line 1457
    .end local v20    # "presentationsBuilder":Landroid/service/autofill/Presentations$Builder;
    .restart local v0    # "presentationsBuilder":Landroid/service/autofill/Presentations$Builder;
    :goto_98
    if-eqz v4, :cond_9d

    .line 1458
    invoke-virtual {v0, v4}, Landroid/service/autofill/Presentations$Builder;->setInlinePresentation(Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Presentations$Builder;

    .line 1460
    :cond_9d
    if-eqz v5, :cond_a2

    .line 1461
    invoke-virtual {v0, v5}, Landroid/service/autofill/Presentations$Builder;->setInlineTooltipPresentation(Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Presentations$Builder;

    .line 1463
    :cond_a2
    if-eqz v3, :cond_a7

    .line 1464
    invoke-virtual {v0, v3}, Landroid/service/autofill/Presentations$Builder;->setDialogPresentation(Landroid/widget/RemoteViews;)Landroid/service/autofill/Presentations$Builder;

    .line 1466
    :cond_a7
    move-object/from16 v19, v0

    .end local v0    # "presentationsBuilder":Landroid/service/autofill/Presentations$Builder;
    .local v19, "presentationsBuilder":Landroid/service/autofill/Presentations$Builder;
    new-instance v0, Landroid/service/autofill/Dataset$Builder;

    move-object/from16 v20, v1

    .end local v1    # "presentation":Landroid/widget/RemoteViews;
    .local v20, "presentation":Landroid/widget/RemoteViews;
    invoke-virtual/range {v19 .. v19}, Landroid/service/autofill/Presentations$Builder;->build()Landroid/service/autofill/Presentations;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/service/autofill/Dataset$Builder;-><init>(Landroid/service/autofill/Presentations;)V

    move-object/from16 v19, v0

    .line 1467
    .local v19, "builder":Landroid/service/autofill/Dataset$Builder;
    nop

    .line 1471
    .end local v19    # "builder":Landroid/service/autofill/Dataset$Builder;
    .local v0, "builder":Landroid/service/autofill/Dataset$Builder;
    :goto_b7
    if-eqz v14, :cond_c3

    .line 1472
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1, v14}, Landroid/service/autofill/Dataset$Builder;->setContent(Landroid/view/autofill/AutofillId;Landroid/content/ClipData;)Landroid/service/autofill/Dataset$Builder;

    .line 1474
    :cond_c3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1475
    .local v1, "inlinePresentationsSize":I
    const/16 v19, 0x0

    move-object/from16 v21, v0

    move/from16 v0, v19

    .local v0, "i":I
    .local v21, "builder":Landroid/service/autofill/Dataset$Builder;
    :goto_cd
    move-object/from16 v19, v3

    .end local v3    # "dialogPresentation":Landroid/widget/RemoteViews;
    .local v19, "dialogPresentation":Landroid/widget/RemoteViews;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_129

    .line 1476
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroid/view/autofill/AutofillId;

    .line 1477
    .local v22, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Ljava/lang/String;

    .line 1478
    .local v23, "datatype":Ljava/lang/String;
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Landroid/view/autofill/AutofillValue;

    .line 1479
    .local v24, "value":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Landroid/widget/RemoteViews;

    .line 1480
    .local v25, "fieldPresentation":Landroid/widget/RemoteViews;
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v29, v3

    check-cast v29, Landroid/widget/RemoteViews;

    .line 1482
    .local v29, "fieldDialogPresentation":Landroid/widget/RemoteViews;
    if-ge v0, v1, :cond_108

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/InlinePresentation;

    move-object/from16 v26, v3

    goto :goto_10a

    :cond_108
    const/16 v26, 0x0

    .line 1484
    .local v26, "fieldInlinePresentation":Landroid/service/autofill/InlinePresentation;
    :goto_10a
    if-ge v0, v1, :cond_115

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/InlinePresentation;

    move-object/from16 v27, v3

    goto :goto_117

    :cond_115
    const/16 v27, 0x0

    .line 1485
    .local v27, "fieldInlineTooltipPresentation":Landroid/service/autofill/InlinePresentation;
    :goto_117
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v28, v3

    check-cast v28, Landroid/service/autofill/Dataset$DatasetFieldFilter;

    .line 1486
    .local v28, "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    invoke-static/range {v21 .. v29}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$mcreateFromParcel(Landroid/service/autofill/Dataset$Builder;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)V

    .line 1475
    move-object/from16 v3, v21

    .end local v21    # "builder":Landroid/service/autofill/Dataset$Builder;
    .end local v22    # "id":Landroid/view/autofill/AutofillId;
    .end local v23    # "datatype":Ljava/lang/String;
    .end local v24    # "value":Landroid/view/autofill/AutofillValue;
    .end local v25    # "fieldPresentation":Landroid/widget/RemoteViews;
    .end local v26    # "fieldInlinePresentation":Landroid/service/autofill/InlinePresentation;
    .end local v27    # "fieldInlineTooltipPresentation":Landroid/service/autofill/InlinePresentation;
    .end local v28    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .end local v29    # "fieldDialogPresentation":Landroid/widget/RemoteViews;
    .local v3, "builder":Landroid/service/autofill/Dataset$Builder;
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v19

    goto :goto_cd

    .end local v3    # "builder":Landroid/service/autofill/Dataset$Builder;
    .restart local v21    # "builder":Landroid/service/autofill/Dataset$Builder;
    :cond_129
    move-object/from16 v3, v21

    .line 1490
    .end local v0    # "i":I
    .end local v21    # "builder":Landroid/service/autofill/Dataset$Builder;
    .restart local v3    # "builder":Landroid/service/autofill/Dataset$Builder;
    invoke-virtual {v3, v15}, Landroid/service/autofill/Dataset$Builder;->setAuthentication(Landroid/content/IntentSender;)Landroid/service/autofill/Dataset$Builder;

    .line 1491
    invoke-virtual {v3, v2}, Landroid/service/autofill/Dataset$Builder;->setCredentialFillInIntent(Landroid/content/Intent;)Landroid/service/autofill/Dataset$Builder;

    .line 1492
    move-object/from16 v0, v17

    .end local v17    # "datasetId":Ljava/lang/String;
    .local v0, "datasetId":Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/service/autofill/Dataset$Builder;->setId(Ljava/lang/String;)Landroid/service/autofill/Dataset$Builder;

    .line 1493
    nop

    .end local v0    # "datasetId":Ljava/lang/String;
    .restart local v17    # "datasetId":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/service/autofill/Dataset$Builder;->build()Landroid/service/autofill/Dataset;

    move-result-object v0

    .line 1494
    .local v0, "dataset":Landroid/service/autofill/Dataset;
    move/from16 v16, v1

    move/from16 v1, v18

    .end local v18    # "eligibleReason":I
    .local v1, "eligibleReason":I
    .local v16, "inlinePresentationsSize":I
    invoke-static {v0, v1}, Landroid/service/autofill/Dataset;->-$$Nest$fputmEligibleReason(Landroid/service/autofill/Dataset;I)V

    .line 1495
    return-object v0
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

    .line 1413
    invoke-virtual {p0, p1}, Landroid/service/autofill/Dataset$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/Dataset;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/autofill/Dataset;
    .registers 3
    .param p1, "size"    # I

    .line 1500
    new-array v0, p1, [Landroid/service/autofill/Dataset;

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

    .line 1413
    invoke-virtual {p0, p1}, Landroid/service/autofill/Dataset$1;->newArray(I)[Landroid/service/autofill/Dataset;

    move-result-object p1

    return-object p1
.end method
