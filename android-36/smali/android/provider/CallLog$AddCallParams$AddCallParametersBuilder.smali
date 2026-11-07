.class public final Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
.super Ljava/lang/Object;
.source "CallLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CallLog$AddCallParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddCallParametersBuilder"
.end annotation


# static fields
.field public static final blacklist MAX_NUMBER_OF_CHARACTERS:I = 0x100


# instance fields
.field private blacklist mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private blacklist mAddForAllUsers:Z

.field private blacklist mAssertedDisplayName:Ljava/lang/String;

.field private blacklist mCallBlockReason:I

.field private blacklist mCallScreeningAppName:Ljava/lang/CharSequence;

.field private blacklist mCallScreeningComponentName:Ljava/lang/String;

.field private blacklist mCallType:I

.field private blacklist mCallerInfo:Landroid/telecom/CallerInfo;

.field private blacklist mDataUsage:Ljava/lang/Long;

.field private blacklist mDuration:I

.field private blacklist mFeatures:I

.field private blacklist mIsBusinessCall:Z

.field private blacklist mIsPhoneAccountMigrationPending:I

.field private blacklist mIsRead:Z

.field private blacklist mLatitude:D

.field private blacklist mLongitude:D

.field private blacklist mMissedReason:J

.field private blacklist mNumber:Ljava/lang/String;

.field private blacklist mPictureUri:Landroid/net/Uri;

.field private blacklist mPostDialDigits:Ljava/lang/String;

.field private blacklist mPresentation:I

.field private blacklist mPriority:I

.field private blacklist mStart:J

.field private blacklist mSubject:Ljava/lang/String;

.field private blacklist mUserToBeInsertedTo:Landroid/os/UserHandle;

.field private blacklist mViaNumber:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    const/4 v0, 0x3

    iput v0, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPresentation:I

    .line 416
    const/4 v0, 0x1

    iput v0, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallType:I

    .line 421
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mDataUsage:Ljava/lang/Long;

    .line 425
    const/4 v0, 0x0

    iput v0, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallBlockReason:I

    .line 428
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mMissedReason:J

    .line 429
    iput v0, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPriority:I

    .line 431
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mLatitude:D

    .line 432
    iput-wide v0, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mLongitude:D

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/provider/CallLog$AddCallParams;
    .registers 36

    .line 684
    move-object/from16 v0, p0

    invoke-static {}, Lcom/android/server/telecom/flags/Flags;->businessCallComposer()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 685
    new-instance v2, Landroid/provider/CallLog$AddCallParams;

    iget-object v3, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallerInfo:Landroid/telecom/CallerInfo;

    iget-object v4, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mNumber:Ljava/lang/String;

    iget-object v5, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPostDialDigits:Ljava/lang/String;

    iget-object v6, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mViaNumber:Ljava/lang/String;

    iget v7, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPresentation:I

    iget v8, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallType:I

    iget v9, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mFeatures:I

    iget-object v10, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-wide v11, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mStart:J

    iget v13, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mDuration:I

    iget-object v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mDataUsage:Ljava/lang/Long;

    .line 687
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iget-boolean v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mAddForAllUsers:Z

    move/from16 v16, v1

    iget-object v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mUserToBeInsertedTo:Landroid/os/UserHandle;

    move-object/from16 v17, v1

    iget-boolean v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mIsRead:Z

    move/from16 v18, v1

    iget v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallBlockReason:I

    move/from16 v19, v1

    iget-object v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallScreeningAppName:Ljava/lang/CharSequence;

    move-object/from16 v20, v1

    iget-object v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallScreeningComponentName:Ljava/lang/String;

    move-object/from16 v22, v1

    move-object/from16 v21, v2

    iget-wide v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mMissedReason:J

    move-wide/from16 v23, v1

    iget v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPriority:I

    iget-object v2, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mSubject:Ljava/lang/String;

    move/from16 v25, v1

    move-object/from16 v26, v2

    iget-wide v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mLatitude:D

    move-wide/from16 v27, v1

    iget-wide v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mLongitude:D

    move-wide/from16 v29, v1

    iget-object v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPictureUri:Landroid/net/Uri;

    iget v2, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mIsPhoneAccountMigrationPending:I

    move-object/from16 v31, v1

    iget-boolean v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mIsBusinessCall:Z

    move/from16 v32, v1

    iget-object v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mAssertedDisplayName:Ljava/lang/String;

    const/16 v34, 0x0

    move-object/from16 v33, v31

    move/from16 v31, v2

    move-object/from16 v2, v21

    move-object/from16 v21, v22

    move-wide/from16 v22, v23

    move/from16 v24, v25

    move-object/from16 v25, v26

    move-wide/from16 v26, v27

    move-wide/from16 v28, v29

    move-object/from16 v30, v33

    move-object/from16 v33, v1

    invoke-direct/range {v2 .. v34}, Landroid/provider/CallLog$AddCallParams;-><init>(Landroid/telecom/CallerInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JIJZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JILjava/lang/String;DDLandroid/net/Uri;IZLjava/lang/String;Landroid/provider/CallLog-IA;)V

    .line 685
    return-object v2

    .line 693
    :cond_7a
    new-instance v3, Landroid/provider/CallLog$AddCallParams;

    iget-object v4, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallerInfo:Landroid/telecom/CallerInfo;

    iget-object v5, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mNumber:Ljava/lang/String;

    iget-object v6, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPostDialDigits:Ljava/lang/String;

    iget-object v7, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mViaNumber:Ljava/lang/String;

    iget v8, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPresentation:I

    iget v9, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallType:I

    iget v10, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mFeatures:I

    iget-object v11, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-wide v12, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mStart:J

    iget v14, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mDuration:I

    iget-object v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mDataUsage:Ljava/lang/Long;

    .line 695
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    iget-boolean v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mAddForAllUsers:Z

    iget-object v2, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mUserToBeInsertedTo:Landroid/os/UserHandle;

    move/from16 v17, v1

    iget-boolean v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mIsRead:Z

    move/from16 v19, v1

    iget v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallBlockReason:I

    move/from16 v20, v1

    iget-object v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallScreeningAppName:Ljava/lang/CharSequence;

    move-object/from16 v21, v1

    iget-object v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallScreeningComponentName:Ljava/lang/String;

    move-object/from16 v22, v1

    move-object/from16 v18, v2

    iget-wide v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mMissedReason:J

    move-wide/from16 v23, v1

    iget v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPriority:I

    iget-object v2, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mSubject:Ljava/lang/String;

    move/from16 v25, v1

    move-object/from16 v26, v2

    iget-wide v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mLatitude:D

    move-wide/from16 v27, v1

    iget-wide v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mLongitude:D

    move-wide/from16 v29, v1

    iget-object v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPictureUri:Landroid/net/Uri;

    iget v2, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mIsPhoneAccountMigrationPending:I

    const/16 v33, 0x0

    move-object/from16 v31, v1

    move/from16 v32, v2

    invoke-direct/range {v3 .. v33}, Landroid/provider/CallLog$AddCallParams;-><init>(Landroid/telecom/CallerInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JIJZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JILjava/lang/String;DDLandroid/net/Uri;ILandroid/provider/CallLog-IA;)V

    .line 693
    return-object v3
.end method

.method public blacklist setAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 505
    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 506
    return-object p0
.end method

.method public blacklist setAddForAllUsers(Z)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2
    .param p1, "addForAllUsers"    # Z

    .line 542
    iput-boolean p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mAddForAllUsers:Z

    .line 543
    return-object p0
.end method

.method public blacklist setAssertedDisplayName(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 4
    .param p1, "assertedDisplayName"    # Ljava/lang/String;

    .line 671
    if-eqz p1, :cond_13

    .line 672
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_b

    goto :goto_13

    .line 673
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "assertedDisplayName exceeds the character limit of 256."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_13
    :goto_13
    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mAssertedDisplayName:Ljava/lang/String;

    .line 677
    return-object p0
.end method

.method public blacklist setCallBlockReason(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2
    .param p1, "callBlockReason"    # I

    .line 572
    iput p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallBlockReason:I

    .line 573
    return-object p0
.end method

.method public blacklist setCallScreeningAppName(Ljava/lang/CharSequence;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2
    .param p1, "callScreeningAppName"    # Ljava/lang/CharSequence;

    .line 581
    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallScreeningAppName:Ljava/lang/CharSequence;

    .line 582
    return-object p0
.end method

.method public blacklist setCallScreeningComponentName(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2
    .param p1, "callScreeningComponentName"    # Ljava/lang/String;

    .line 591
    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallScreeningComponentName:Ljava/lang/String;

    .line 592
    return-object p0
.end method

.method public blacklist setCallType(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2
    .param p1, "callType"    # I

    .line 488
    iput p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallType:I

    .line 489
    return-object p0
.end method

.method public blacklist setCallerInfo(Landroid/telecom/CallerInfo;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2
    .param p1, "callerInfo"    # Landroid/telecom/CallerInfo;

    .line 443
    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallerInfo:Landroid/telecom/CallerInfo;

    .line 444
    return-object p0
.end method

.method public blacklist setDataUsage(J)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 4
    .param p1, "dataUsage"    # J

    .line 531
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mDataUsage:Ljava/lang/Long;

    .line 532
    return-object p0
.end method

.method public blacklist setDuration(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2
    .param p1, "duration"    # I

    .line 521
    iput p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mDuration:I

    .line 522
    return-object p0
.end method

.method public blacklist setFeatures(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2
    .param p1, "features"    # I

    .line 496
    iput p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mFeatures:I

    .line 497
    return-object p0
.end method

.method public blacklist setIsBusinessCall(Z)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2
    .param p1, "isBusinessCall"    # Z

    .line 659
    iput-boolean p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mIsBusinessCall:Z

    .line 660
    return-object p0
.end method

.method public blacklist setIsPhoneAccountMigrationPending(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2
    .param p1, "isPhoneAccountMigrationPending"    # I

    .line 650
    iput p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mIsPhoneAccountMigrationPending:I

    .line 651
    return-object p0
.end method

.method public blacklist setIsRead(Z)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2
    .param p1, "isRead"    # Z

    .line 564
    iput-boolean p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mIsRead:Z

    .line 565
    return-object p0
.end method

.method public blacklist setLatitude(D)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 3
    .param p1, "latitude"    # D

    .line 624
    iput-wide p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mLatitude:D

    .line 625
    return-object p0
.end method

.method public blacklist setLongitude(D)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 3
    .param p1, "longitude"    # D

    .line 632
    iput-wide p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mLongitude:D

    .line 633
    return-object p0
.end method

.method public blacklist setMissedReason(J)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 3
    .param p1, "missedReason"    # J

    .line 599
    iput-wide p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mMissedReason:J

    .line 600
    return-object p0
.end method

.method public blacklist setNumber(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2
    .param p1, "number"    # Ljava/lang/String;

    .line 451
    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mNumber:Ljava/lang/String;

    .line 452
    return-object p0
.end method

.method public blacklist setPictureUri(Landroid/net/Uri;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2
    .param p1, "pictureUri"    # Landroid/net/Uri;

    .line 641
    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPictureUri:Landroid/net/Uri;

    .line 642
    return-object p0
.end method

.method public blacklist setPostDialDigits(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2
    .param p1, "postDialDigits"    # Ljava/lang/String;

    .line 461
    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPostDialDigits:Ljava/lang/String;

    .line 462
    return-object p0
.end method

.method public blacklist setPresentation(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2
    .param p1, "presentation"    # I

    .line 480
    iput p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPresentation:I

    .line 481
    return-object p0
.end method

.method public blacklist setPriority(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2
    .param p1, "priority"    # I

    .line 608
    iput p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPriority:I

    .line 609
    return-object p0
.end method

.method public blacklist setStart(J)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 3
    .param p1, "start"    # J

    .line 513
    iput-wide p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mStart:J

    .line 514
    return-object p0
.end method

.method public blacklist setSubject(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2
    .param p1, "subject"    # Ljava/lang/String;

    .line 616
    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mSubject:Ljava/lang/String;

    .line 617
    return-object p0
.end method

.method public blacklist setUserToBeInsertedTo(Landroid/os/UserHandle;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2
    .param p1, "userToBeInsertedTo"    # Landroid/os/UserHandle;

    .line 555
    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mUserToBeInsertedTo:Landroid/os/UserHandle;

    .line 556
    return-object p0
.end method

.method public blacklist setViaNumber(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2
    .param p1, "viaNumber"    # Ljava/lang/String;

    .line 470
    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mViaNumber:Ljava/lang/String;

    .line 471
    return-object p0
.end method
