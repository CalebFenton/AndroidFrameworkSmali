.class public final Landroid/safetycenter/SafetySourceIssue$Builder;
.super Ljava/lang/Object;
.source "SafetySourceIssue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetySourceIssue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetySourceIssue$Action;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAttributionTitle:Ljava/lang/CharSequence;

.field private blacklist mCustomNotification:Landroid/safetycenter/SafetySourceIssue$Notification;

.field private blacklist mDeduplicationId:Ljava/lang/String;

.field private final blacklist mId:Ljava/lang/String;

.field private blacklist mIssueActionability:I

.field private blacklist mIssueCategory:I

.field private final blacklist mIssueTypeId:Ljava/lang/String;

.field private blacklist mNotificationBehavior:I

.field private blacklist mOnDismissPendingIntent:Landroid/app/PendingIntent;

.field private final blacklist mSeverityLevel:I

.field private blacklist mSubtitle:Ljava/lang/CharSequence;

.field private final blacklist mSummary:Ljava/lang/CharSequence;

.field private final blacklist mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>(Landroid/safetycenter/SafetySourceIssue;)V
    .registers 4
    .param p1, "safetySourceIssue"    # Landroid/safetycenter/SafetySourceIssue;

    .line 1240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mActions:Ljava/util/List;

    .line 1209
    const/16 v0, 0x12c

    iput v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mIssueCategory:I

    .line 1214
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mCustomNotification:Landroid/safetycenter/SafetySourceIssue$Notification;

    .line 1216
    const/4 v0, 0x0

    iput v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mNotificationBehavior:I

    .line 1220
    iput v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mIssueActionability:I

    .line 1241
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 1245
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    invoke-static {p1}, Landroid/safetycenter/SafetySourceIssue;->-$$Nest$fgetmId(Landroid/safetycenter/SafetySourceIssue;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mId:Ljava/lang/String;

    .line 1247
    invoke-static {p1}, Landroid/safetycenter/SafetySourceIssue;->-$$Nest$fgetmTitle(Landroid/safetycenter/SafetySourceIssue;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 1248
    invoke-static {p1}, Landroid/safetycenter/SafetySourceIssue;->-$$Nest$fgetmSummary(Landroid/safetycenter/SafetySourceIssue;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mSummary:Ljava/lang/CharSequence;

    .line 1249
    invoke-static {p1}, Landroid/safetycenter/SafetySourceIssue;->-$$Nest$fgetmSeverityLevel(Landroid/safetycenter/SafetySourceIssue;)I

    move-result v0

    iput v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mSeverityLevel:I

    .line 1250
    invoke-static {p1}, Landroid/safetycenter/SafetySourceIssue;->-$$Nest$fgetmIssueTypeId(Landroid/safetycenter/SafetySourceIssue;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mIssueTypeId:Ljava/lang/String;

    .line 1251
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mActions:Ljava/util/List;

    invoke-static {p1}, Landroid/safetycenter/SafetySourceIssue;->-$$Nest$fgetmActions(Landroid/safetycenter/SafetySourceIssue;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1252
    invoke-static {p1}, Landroid/safetycenter/SafetySourceIssue;->-$$Nest$fgetmSubtitle(Landroid/safetycenter/SafetySourceIssue;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mSubtitle:Ljava/lang/CharSequence;

    .line 1253
    invoke-static {p1}, Landroid/safetycenter/SafetySourceIssue;->-$$Nest$fgetmIssueCategory(Landroid/safetycenter/SafetySourceIssue;)I

    move-result v0

    iput v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mIssueCategory:I

    .line 1254
    invoke-static {p1}, Landroid/safetycenter/SafetySourceIssue;->-$$Nest$fgetmOnDismissPendingIntent(Landroid/safetycenter/SafetySourceIssue;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mOnDismissPendingIntent:Landroid/app/PendingIntent;

    .line 1255
    invoke-static {p1}, Landroid/safetycenter/SafetySourceIssue;->-$$Nest$fgetmAttributionTitle(Landroid/safetycenter/SafetySourceIssue;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mAttributionTitle:Ljava/lang/CharSequence;

    .line 1256
    invoke-static {p1}, Landroid/safetycenter/SafetySourceIssue;->-$$Nest$fgetmDeduplicationId(Landroid/safetycenter/SafetySourceIssue;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mDeduplicationId:Ljava/lang/String;

    .line 1257
    invoke-static {p1}, Landroid/safetycenter/SafetySourceIssue;->-$$Nest$fgetmCustomNotification(Landroid/safetycenter/SafetySourceIssue;)Landroid/safetycenter/SafetySourceIssue$Notification;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mCustomNotification:Landroid/safetycenter/SafetySourceIssue$Notification;

    .line 1258
    invoke-static {p1}, Landroid/safetycenter/SafetySourceIssue;->-$$Nest$fgetmNotificationBehavior(Landroid/safetycenter/SafetySourceIssue;)I

    move-result v0

    iput v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mNotificationBehavior:I

    .line 1259
    invoke-static {p1}, Landroid/safetycenter/SafetySourceIssue;->-$$Nest$fgetmIssueActionability(Landroid/safetycenter/SafetySourceIssue;)I

    move-result v0

    iput v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mIssueActionability:I

    .line 1260
    return-void

    .line 1242
    :cond_77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;)V
    .registers 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "summary"    # Ljava/lang/CharSequence;
    .param p4, "severityLevel"    # I
    .param p5, "issueTypeId"    # Ljava/lang/String;

    .line 1230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mActions:Ljava/util/List;

    .line 1209
    const/16 v0, 0x12c

    iput v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mIssueCategory:I

    .line 1214
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mCustomNotification:Landroid/safetycenter/SafetySourceIssue$Notification;

    .line 1216
    const/4 v0, 0x0

    iput v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mNotificationBehavior:I

    .line 1220
    iput v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mIssueActionability:I

    .line 1231
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mId:Ljava/lang/String;

    .line 1232
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 1233
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mSummary:Ljava/lang/CharSequence;

    .line 1234
    invoke-static {p4}, Landroid/safetycenter/SafetySourceIssue;->-$$Nest$smvalidateSeverityLevel(I)I

    move-result v0

    iput v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mSeverityLevel:I

    .line 1235
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mIssueTypeId:Ljava/lang/String;

    .line 1236
    return-void
.end method


# virtual methods
.method public whitelist addAction(Landroid/safetycenter/SafetySourceIssue$Action;)Landroid/safetycenter/SafetySourceIssue$Builder;
    .registers 4
    .param p1, "actionData"    # Landroid/safetycenter/SafetySourceIssue$Action;

    .line 1301
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mActions:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/safetycenter/SafetySourceIssue$Action;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1302
    return-object p0
.end method

.method public whitelist build()Landroid/safetycenter/SafetySourceIssue;
    .registers 20

    .line 1416
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/safetycenter/SafetySourceIssue$Builder;->mActions:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 1417
    .local v10, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetySourceIssue$Action;>;"
    const-string v1, "Safety source issue cannot have duplicate action ids"

    invoke-static {v10, v1}, Landroid/safetycenter/SafetySourceIssue$Action;->-$$Nest$smenforceUniqueActionIds(Ljava/util/List;Ljava/lang/String;)V

    .line 1419
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2e

    .line 1420
    iget v1, v0, Landroid/safetycenter/SafetySourceIssue$Builder;->mIssueActionability:I

    if-nez v1, :cond_27

    .line 1421
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_27

    :cond_25
    move v1, v2

    goto :goto_28

    :cond_27
    :goto_27
    move v1, v3

    .line 1420
    :goto_28
    const-string v4, "Actionable safety source issue must contain at least 1 action"

    invoke-static {v1, v4}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_39

    .line 1424
    :cond_2e
    nop

    .line 1425
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    .line 1424
    const-string v4, "Safety source issue must contain at least 1 action"

    invoke-static {v1, v4}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1427
    :goto_39
    nop

    .line 1428
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-gt v1, v4, :cond_42

    move v2, v3

    .line 1427
    :cond_42
    const-string v1, "Safety source issue must not contain more than 2 actions"

    invoke-static {v2, v1}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1430
    new-instance v3, Landroid/safetycenter/SafetySourceIssue;

    iget-object v4, v0, Landroid/safetycenter/SafetySourceIssue$Builder;->mId:Ljava/lang/String;

    iget-object v5, v0, Landroid/safetycenter/SafetySourceIssue$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v6, v0, Landroid/safetycenter/SafetySourceIssue$Builder;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v7, v0, Landroid/safetycenter/SafetySourceIssue$Builder;->mSummary:Ljava/lang/CharSequence;

    iget v8, v0, Landroid/safetycenter/SafetySourceIssue$Builder;->mSeverityLevel:I

    iget v9, v0, Landroid/safetycenter/SafetySourceIssue$Builder;->mIssueCategory:I

    iget-object v11, v0, Landroid/safetycenter/SafetySourceIssue$Builder;->mOnDismissPendingIntent:Landroid/app/PendingIntent;

    iget-object v12, v0, Landroid/safetycenter/SafetySourceIssue$Builder;->mIssueTypeId:Ljava/lang/String;

    iget-object v13, v0, Landroid/safetycenter/SafetySourceIssue$Builder;->mCustomNotification:Landroid/safetycenter/SafetySourceIssue$Notification;

    iget v14, v0, Landroid/safetycenter/SafetySourceIssue$Builder;->mNotificationBehavior:I

    iget-object v15, v0, Landroid/safetycenter/SafetySourceIssue$Builder;->mAttributionTitle:Ljava/lang/CharSequence;

    iget-object v1, v0, Landroid/safetycenter/SafetySourceIssue$Builder;->mDeduplicationId:Ljava/lang/String;

    iget v2, v0, Landroid/safetycenter/SafetySourceIssue$Builder;->mIssueActionability:I

    const/16 v18, 0x0

    move-object/from16 v16, v1

    move/from16 v17, v2

    invoke-direct/range {v3 .. v18}, Landroid/safetycenter/SafetySourceIssue;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/util/List;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/safetycenter/SafetySourceIssue$Notification;ILjava/lang/CharSequence;Ljava/lang/String;ILandroid/safetycenter/SafetySourceIssue-IA;)V

    return-object v3
.end method

.method public whitelist clearActions()Landroid/safetycenter/SafetySourceIssue$Builder;
    .registers 2

    .line 1308
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1309
    return-object p0
.end method

.method public whitelist setAttributionTitle(Ljava/lang/CharSequence;)Landroid/safetycenter/SafetySourceIssue$Builder;
    .registers 4
    .param p1, "attributionTitle"    # Ljava/lang/CharSequence;

    .line 1279
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1283
    iput-object p1, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mAttributionTitle:Ljava/lang/CharSequence;

    .line 1284
    return-object p0

    .line 1280
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCustomNotification(Landroid/safetycenter/SafetySourceIssue$Notification;)Landroid/safetycenter/SafetySourceIssue$Builder;
    .registers 4
    .param p1, "customNotification"    # Landroid/safetycenter/SafetySourceIssue$Notification;

    .line 1349
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1353
    iput-object p1, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mCustomNotification:Landroid/safetycenter/SafetySourceIssue$Notification;

    .line 1354
    return-object p0

    .line 1350
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDeduplicationId(Ljava/lang/String;)Landroid/safetycenter/SafetySourceIssue$Builder;
    .registers 4
    .param p1, "deduplicationId"    # Ljava/lang/String;

    .line 1386
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1390
    iput-object p1, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mDeduplicationId:Ljava/lang/String;

    .line 1391
    return-object p0

    .line 1387
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setIssueActionability(I)Landroid/safetycenter/SafetySourceIssue$Builder;
    .registers 4
    .param p1, "issueActionability"    # I

    .line 1405
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1409
    invoke-static {p1}, Landroid/safetycenter/SafetySourceIssue;->-$$Nest$smvalidateIssueActionability(I)I

    move-result v0

    iput v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mIssueActionability:I

    .line 1410
    return-object p0

    .line 1406
    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setIssueCategory(I)Landroid/safetycenter/SafetySourceIssue$Builder;
    .registers 3
    .param p1, "issueCategory"    # I

    .line 1294
    invoke-static {p1}, Landroid/safetycenter/SafetySourceIssue;->-$$Nest$smvalidateIssueCategory(I)I

    move-result v0

    iput v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mIssueCategory:I

    .line 1295
    return-object p0
.end method

.method public whitelist setNotificationBehavior(I)Landroid/safetycenter/SafetySourceIssue$Builder;
    .registers 4
    .param p1, "notificationBehavior"    # I

    .line 1370
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1374
    invoke-static {p1}, Landroid/safetycenter/SafetySourceIssue;->-$$Nest$smvalidateNotificationBehavior(I)I

    move-result v0

    iput v0, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mNotificationBehavior:I

    .line 1375
    return-object p0

    .line 1371
    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnDismissPendingIntent(Landroid/app/PendingIntent;)Landroid/safetycenter/SafetySourceIssue$Builder;
    .registers 4
    .param p1, "onDismissPendingIntent"    # Landroid/app/PendingIntent;

    .line 1324
    if-eqz p1, :cond_b

    .line 1325
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 1324
    :goto_c
    const-string v1, "Safety source issue on dismiss pending intent must not start an activity"

    invoke-static {v0, v1}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1327
    iput-object p1, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mOnDismissPendingIntent:Landroid/app/PendingIntent;

    .line 1328
    return-object p0
.end method

.method public whitelist setSubtitle(Ljava/lang/CharSequence;)Landroid/safetycenter/SafetySourceIssue$Builder;
    .registers 2
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 1265
    iput-object p1, p0, Landroid/safetycenter/SafetySourceIssue$Builder;->mSubtitle:Ljava/lang/CharSequence;

    .line 1266
    return-object p0
.end method
