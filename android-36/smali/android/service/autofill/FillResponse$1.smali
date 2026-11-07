.class Landroid/service/autofill/FillResponse$1;
.super Ljava/lang/Object;
.source "FillResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/FillResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/FillResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FillResponse;
    .registers 25
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 1296
    move-object/from16 v0, p1

    new-instance v1, Landroid/service/autofill/FillResponse$Builder;

    invoke-direct {v1}, Landroid/service/autofill/FillResponse$Builder;-><init>()V

    move-object v2, v1

    .line 1297
    .local v2, "builder":Landroid/service/autofill/FillResponse$Builder;
    const-class v1, Landroid/content/pm/ParceledListSlice;

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .line 1298
    .local v1, "datasetSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/autofill/Dataset;>;"
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    goto :goto_19

    :cond_18
    move-object v3, v9

    :goto_19
    move-object v10, v3

    .line 1299
    .local v10, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    if-eqz v10, :cond_21

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_22

    :cond_21
    const/4 v3, 0x0

    :goto_22
    move v11, v3

    .line 1300
    .local v11, "datasetCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_24
    if-ge v3, v11, :cond_32

    .line 1301
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/Dataset;

    invoke-virtual {v2, v4}, Landroid/service/autofill/FillResponse$Builder;->addDataset(Landroid/service/autofill/Dataset;)Landroid/service/autofill/FillResponse$Builder;

    .line 1300
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 1303
    .end local v3    # "i":I
    :cond_32
    const-class v3, Landroid/service/autofill/SaveInfo;

    invoke-virtual {v0, v9, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/SaveInfo;

    invoke-virtual {v2, v3}, Landroid/service/autofill/FillResponse$Builder;->setSaveInfo(Landroid/service/autofill/SaveInfo;)Landroid/service/autofill/FillResponse$Builder;

    .line 1304
    const-class v3, Landroid/os/Bundle;

    invoke-virtual {v0, v9, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/service/autofill/FillResponse$Builder;->setClientState(Landroid/os/Bundle;)Landroid/service/autofill/FillResponse$Builder;

    .line 1307
    const-class v3, Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v9, v3}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/autofill/AutofillId;

    .line 1309
    .local v3, "authenticationIds":[Landroid/view/autofill/AutofillId;
    const-class v4, Landroid/content/IntentSender;

    invoke-virtual {v0, v9, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentSender;

    .line 1310
    .local v4, "authentication":Landroid/content/IntentSender;
    const-class v5, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v9, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews;

    .line 1311
    .local v5, "presentation":Landroid/widget/RemoteViews;
    const-class v6, Landroid/service/autofill/InlinePresentation;

    invoke-virtual {v0, v9, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/autofill/InlinePresentation;

    .line 1312
    .local v6, "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    const-class v7, Landroid/service/autofill/InlinePresentation;

    invoke-virtual {v0, v9, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/autofill/InlinePresentation;

    .line 1313
    .local v7, "inlineTooltipPresentation":Landroid/service/autofill/InlinePresentation;
    const-class v8, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v9, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/RemoteViews;

    .line 1314
    .local v8, "dialogPresentation":Landroid/widget/RemoteViews;
    if-eqz v3, :cond_7d

    .line 1315
    invoke-static/range {v2 .. v8}, Landroid/service/autofill/FillResponse$Builder;->-$$Nest$msetAuthentication(Landroid/service/autofill/FillResponse$Builder;[Landroid/view/autofill/AutofillId;Landroid/content/IntentSender;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;

    .line 1318
    :cond_7d
    const-class v12, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v9, v12}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/RemoteViews;

    .line 1319
    .local v12, "dialogHeader":Landroid/widget/RemoteViews;
    if-eqz v12, :cond_8a

    .line 1320
    invoke-virtual {v2, v12}, Landroid/service/autofill/FillResponse$Builder;->setDialogHeader(Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;

    .line 1322
    :cond_8a
    const-class v13, Landroid/app/PendingIntent;

    invoke-virtual {v0, v9, v13}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/PendingIntent;

    .line 1324
    .local v13, "dialogPendingIntent":Landroid/app/PendingIntent;
    if-eqz v13, :cond_97

    .line 1325
    invoke-virtual {v2, v13}, Landroid/service/autofill/FillResponse$Builder;->setDialogPendingIntent(Landroid/app/PendingIntent;)Landroid/service/autofill/FillResponse$Builder;

    .line 1327
    :cond_97
    const-class v14, Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v9, v14}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/view/autofill/AutofillId;

    .line 1328
    .local v14, "triggerIds":[Landroid/view/autofill/AutofillId;
    if-eqz v14, :cond_a4

    .line 1329
    invoke-virtual {v2, v14}, Landroid/service/autofill/FillResponse$Builder;->setFillDialogTriggerIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/FillResponse$Builder;

    .line 1331
    :cond_a4
    const-class v15, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v9, v15}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/RemoteViews;

    .line 1332
    .local v15, "header":Landroid/widget/RemoteViews;
    if-eqz v15, :cond_b1

    .line 1333
    invoke-virtual {v2, v15}, Landroid/service/autofill/FillResponse$Builder;->setHeader(Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;

    .line 1335
    :cond_b1
    move-object/from16 v16, v1

    .end local v1    # "datasetSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/autofill/Dataset;>;"
    .local v16, "datasetSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/autofill/Dataset;>;"
    const-class v1, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v9, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 1336
    .local v1, "footer":Landroid/widget/RemoteViews;
    if-eqz v1, :cond_c0

    .line 1337
    invoke-virtual {v2, v1}, Landroid/service/autofill/FillResponse$Builder;->setFooter(Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;

    .line 1339
    :cond_c0
    move-object/from16 v17, v1

    .end local v1    # "footer":Landroid/widget/RemoteViews;
    .local v17, "footer":Landroid/widget/RemoteViews;
    const-class v1, Landroid/service/autofill/UserData;

    invoke-virtual {v0, v9, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/UserData;

    .line 1340
    .local v1, "userData":Landroid/service/autofill/UserData;
    if-eqz v1, :cond_cf

    .line 1341
    invoke-virtual {v2, v1}, Landroid/service/autofill/FillResponse$Builder;->setUserData(Landroid/service/autofill/UserData;)Landroid/service/autofill/FillResponse$Builder;

    .line 1344
    :cond_cf
    move-object/from16 v18, v1

    .end local v1    # "userData":Landroid/service/autofill/UserData;
    .local v18, "userData":Landroid/service/autofill/UserData;
    const-class v1, Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v9, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v1}, Landroid/service/autofill/FillResponse$Builder;->setIgnoredIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/FillResponse$Builder;

    .line 1345
    move-object/from16 v19, v10

    .end local v10    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .local v19, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 1346
    .local v9, "disableDuration":J
    const-wide/16 v20, 0x0

    cmp-long v20, v9, v20

    if-lez v20, :cond_eb

    .line 1347
    invoke-virtual {v2, v9, v10}, Landroid/service/autofill/FillResponse$Builder;->disableAutofill(J)Landroid/service/autofill/FillResponse$Builder;

    .line 1349
    :cond_eb
    const-class v1, Landroid/view/autofill/AutofillId;

    .line 1350
    move-object/from16 v21, v3

    const/4 v3, 0x0

    .end local v3    # "authenticationIds":[Landroid/view/autofill/AutofillId;
    .local v21, "authenticationIds":[Landroid/view/autofill/AutofillId;
    invoke-virtual {v0, v3, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v3, v20

    check-cast v3, [Landroid/view/autofill/AutofillId;

    .line 1351
    .local v3, "fieldClassifactionIds":[Landroid/view/autofill/AutofillId;
    if-eqz v3, :cond_fd

    .line 1352
    invoke-virtual {v2, v3}, Landroid/service/autofill/FillResponse$Builder;->setFieldClassificationIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/FillResponse$Builder;

    .line 1355
    :cond_fd
    const-class v1, Landroid/service/assist/classification/FieldClassification;

    .line 1356
    move-object/from16 v22, v3

    const/4 v3, 0x0

    .end local v3    # "fieldClassifactionIds":[Landroid/view/autofill/AutofillId;
    .local v22, "fieldClassifactionIds":[Landroid/view/autofill/AutofillId;
    invoke-virtual {v0, v3, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/service/assist/classification/FieldClassification;

    .line 1357
    .local v1, "detectedFields":[Landroid/service/assist/classification/FieldClassification;
    if-eqz v1, :cond_111

    .line 1358
    invoke-static {v1}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/service/autofill/FillResponse$Builder;->setDetectedFieldClassifications(Ljava/util/Set;)Landroid/service/autofill/FillResponse$Builder;

    .line 1361
    :cond_111
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/service/autofill/FillResponse$Builder;->setIconResourceId(I)Landroid/service/autofill/FillResponse$Builder;

    .line 1362
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/service/autofill/FillResponse$Builder;->setServiceDisplayNameResourceId(I)Landroid/service/autofill/FillResponse$Builder;

    .line 1363
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/service/autofill/FillResponse$Builder;->setShowFillDialogIcon(Z)Landroid/service/autofill/FillResponse$Builder;

    .line 1364
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/service/autofill/FillResponse$Builder;->setShowSaveDialogIcon(Z)Landroid/service/autofill/FillResponse$Builder;

    .line 1365
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/service/autofill/FillResponse$Builder;->setFlags(I)Landroid/service/autofill/FillResponse$Builder;

    .line 1366
    invoke-virtual {v0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 1367
    .local v3, "cancelIds":[I
    invoke-virtual {v2, v3}, Landroid/service/autofill/FillResponse$Builder;->setPresentationCancelIds([I)Landroid/service/autofill/FillResponse$Builder;

    .line 1369
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse$Builder;->build()Landroid/service/autofill/FillResponse;

    move-result-object v0

    .line 1370
    .local v0, "response":Landroid/service/autofill/FillResponse;
    move-object/from16 v20, v1

    .end local v1    # "detectedFields":[Landroid/service/assist/classification/FieldClassification;
    .local v20, "detectedFields":[Landroid/service/assist/classification/FieldClassification;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/autofill/FillResponse;->setRequestId(I)V

    .line 1372
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

    .line 1290
    invoke-virtual {p0, p1}, Landroid/service/autofill/FillResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FillResponse;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/autofill/FillResponse;
    .registers 3
    .param p1, "size"    # I

    .line 1377
    new-array v0, p1, [Landroid/service/autofill/FillResponse;

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

    .line 1290
    invoke-virtual {p0, p1}, Landroid/service/autofill/FillResponse$1;->newArray(I)[Landroid/service/autofill/FillResponse;

    move-result-object p1

    return-object p1
.end method
