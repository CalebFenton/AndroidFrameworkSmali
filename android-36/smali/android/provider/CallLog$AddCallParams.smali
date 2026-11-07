.class public Landroid/provider/CallLog$AddCallParams;
.super Ljava/lang/Object;
.source "CallLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddCallParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    }
.end annotation


# instance fields
.field private blacklist mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private blacklist mAddForAllUsers:Z

.field private blacklist mAssertedDisplayName:Ljava/lang/String;

.field private blacklist mCallBlockReason:I

.field private blacklist mCallScreeningAppName:Ljava/lang/CharSequence;

.field private blacklist mCallScreeningComponentName:Ljava/lang/String;

.field private blacklist mCallType:I

.field private blacklist mCallerInfo:Landroid/telecom/CallerInfo;

.field private blacklist mDataUsage:J

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
.method static bridge synthetic blacklist -$$Nest$fgetmAccountHandle(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/PhoneAccountHandle;
    .registers 1

    iget-object p0, p0, Landroid/provider/CallLog$AddCallParams;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAddForAllUsers(Landroid/provider/CallLog$AddCallParams;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/provider/CallLog$AddCallParams;->mAddForAllUsers:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAssertedDisplayName(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/provider/CallLog$AddCallParams;->mAssertedDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallBlockReason(Landroid/provider/CallLog$AddCallParams;)I
    .registers 1

    iget p0, p0, Landroid/provider/CallLog$AddCallParams;->mCallBlockReason:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallScreeningAppName(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/provider/CallLog$AddCallParams;->mCallScreeningAppName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallScreeningComponentName(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/provider/CallLog$AddCallParams;->mCallScreeningComponentName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallType(Landroid/provider/CallLog$AddCallParams;)I
    .registers 1

    iget p0, p0, Landroid/provider/CallLog$AddCallParams;->mCallType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallerInfo(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/CallerInfo;
    .registers 1

    iget-object p0, p0, Landroid/provider/CallLog$AddCallParams;->mCallerInfo:Landroid/telecom/CallerInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataUsage(Landroid/provider/CallLog$AddCallParams;)J
    .registers 3

    iget-wide v0, p0, Landroid/provider/CallLog$AddCallParams;->mDataUsage:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDuration(Landroid/provider/CallLog$AddCallParams;)I
    .registers 1

    iget p0, p0, Landroid/provider/CallLog$AddCallParams;->mDuration:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFeatures(Landroid/provider/CallLog$AddCallParams;)I
    .registers 1

    iget p0, p0, Landroid/provider/CallLog$AddCallParams;->mFeatures:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsBusinessCall(Landroid/provider/CallLog$AddCallParams;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/provider/CallLog$AddCallParams;->mIsBusinessCall:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPhoneAccountMigrationPending(Landroid/provider/CallLog$AddCallParams;)I
    .registers 1

    iget p0, p0, Landroid/provider/CallLog$AddCallParams;->mIsPhoneAccountMigrationPending:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsRead(Landroid/provider/CallLog$AddCallParams;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/provider/CallLog$AddCallParams;->mIsRead:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLatitude(Landroid/provider/CallLog$AddCallParams;)D
    .registers 3

    iget-wide v0, p0, Landroid/provider/CallLog$AddCallParams;->mLatitude:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLongitude(Landroid/provider/CallLog$AddCallParams;)D
    .registers 3

    iget-wide v0, p0, Landroid/provider/CallLog$AddCallParams;->mLongitude:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMissedReason(Landroid/provider/CallLog$AddCallParams;)J
    .registers 3

    iget-wide v0, p0, Landroid/provider/CallLog$AddCallParams;->mMissedReason:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumber(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/provider/CallLog$AddCallParams;->mNumber:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPictureUri(Landroid/provider/CallLog$AddCallParams;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/provider/CallLog$AddCallParams;->mPictureUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPostDialDigits(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/provider/CallLog$AddCallParams;->mPostDialDigits:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPresentation(Landroid/provider/CallLog$AddCallParams;)I
    .registers 1

    iget p0, p0, Landroid/provider/CallLog$AddCallParams;->mPresentation:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPriority(Landroid/provider/CallLog$AddCallParams;)I
    .registers 1

    iget p0, p0, Landroid/provider/CallLog$AddCallParams;->mPriority:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStart(Landroid/provider/CallLog$AddCallParams;)J
    .registers 3

    iget-wide v0, p0, Landroid/provider/CallLog$AddCallParams;->mStart:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubject(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/provider/CallLog$AddCallParams;->mSubject:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserToBeInsertedTo(Landroid/provider/CallLog$AddCallParams;)Landroid/os/UserHandle;
    .registers 1

    iget-object p0, p0, Landroid/provider/CallLog$AddCallParams;->mUserToBeInsertedTo:Landroid/os/UserHandle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViaNumber(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/provider/CallLog$AddCallParams;->mViaNumber:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNumber(Landroid/provider/CallLog$AddCallParams;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams;->mNumber:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telecom/CallerInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JIJZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JILjava/lang/String;DDLandroid/net/Uri;I)V
    .registers 46
    .param p1, "callerInfo"    # Landroid/telecom/CallerInfo;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "postDialDigits"    # Ljava/lang/String;
    .param p4, "viaNumber"    # Ljava/lang/String;
    .param p5, "presentation"    # I
    .param p6, "callType"    # I
    .param p7, "features"    # I
    .param p8, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p9, "start"    # J
    .param p11, "duration"    # I
    .param p12, "dataUsage"    # J
    .param p14, "addForAllUsers"    # Z
    .param p15, "userToBeInsertedTo"    # Landroid/os/UserHandle;
    .param p16, "isRead"    # Z
    .param p17, "callBlockReason"    # I
    .param p18, "callScreeningAppName"    # Ljava/lang/CharSequence;
    .param p19, "callScreeningComponentName"    # Ljava/lang/String;
    .param p20, "missedReason"    # J
    .param p22, "priority"    # I
    .param p23, "subject"    # Ljava/lang/String;
    .param p24, "latitude"    # D
    .param p26, "longitude"    # D
    .param p28, "pictureUri"    # Landroid/net/Uri;
    .param p29, "isPhoneAccountMigrationPending"    # I

    .line 739
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 724
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    iput-wide v1, v0, Landroid/provider/CallLog$AddCallParams;->mLatitude:D

    .line 725
    iput-wide v1, v0, Landroid/provider/CallLog$AddCallParams;->mLongitude:D

    .line 740
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/provider/CallLog$AddCallParams;->mCallerInfo:Landroid/telecom/CallerInfo;

    .line 741
    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/provider/CallLog$AddCallParams;->mNumber:Ljava/lang/String;

    .line 742
    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/provider/CallLog$AddCallParams;->mPostDialDigits:Ljava/lang/String;

    .line 743
    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/provider/CallLog$AddCallParams;->mViaNumber:Ljava/lang/String;

    .line 744
    move/from16 v5, p5

    iput v5, v0, Landroid/provider/CallLog$AddCallParams;->mPresentation:I

    .line 745
    move/from16 v6, p6

    iput v6, v0, Landroid/provider/CallLog$AddCallParams;->mCallType:I

    .line 746
    move/from16 v7, p7

    iput v7, v0, Landroid/provider/CallLog$AddCallParams;->mFeatures:I

    .line 747
    move-object/from16 v8, p8

    iput-object v8, v0, Landroid/provider/CallLog$AddCallParams;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 748
    move-wide/from16 v9, p9

    iput-wide v9, v0, Landroid/provider/CallLog$AddCallParams;->mStart:J

    .line 749
    move/from16 v11, p11

    iput v11, v0, Landroid/provider/CallLog$AddCallParams;->mDuration:I

    .line 750
    move-wide/from16 v12, p12

    iput-wide v12, v0, Landroid/provider/CallLog$AddCallParams;->mDataUsage:J

    .line 751
    move/from16 v14, p14

    iput-boolean v14, v0, Landroid/provider/CallLog$AddCallParams;->mAddForAllUsers:Z

    .line 752
    move-object/from16 v15, p15

    iput-object v15, v0, Landroid/provider/CallLog$AddCallParams;->mUserToBeInsertedTo:Landroid/os/UserHandle;

    .line 753
    move/from16 v1, p16

    iput-boolean v1, v0, Landroid/provider/CallLog$AddCallParams;->mIsRead:Z

    .line 754
    move/from16 v1, p17

    iput v1, v0, Landroid/provider/CallLog$AddCallParams;->mCallBlockReason:I

    .line 755
    move-object/from16 v1, p18

    iput-object v1, v0, Landroid/provider/CallLog$AddCallParams;->mCallScreeningAppName:Ljava/lang/CharSequence;

    .line 756
    move-object/from16 v1, p19

    iput-object v1, v0, Landroid/provider/CallLog$AddCallParams;->mCallScreeningComponentName:Ljava/lang/String;

    .line 757
    move-wide/from16 v1, p20

    iput-wide v1, v0, Landroid/provider/CallLog$AddCallParams;->mMissedReason:J

    .line 758
    move/from16 v1, p22

    iput v1, v0, Landroid/provider/CallLog$AddCallParams;->mPriority:I

    .line 759
    move-object/from16 v2, p23

    iput-object v2, v0, Landroid/provider/CallLog$AddCallParams;->mSubject:Ljava/lang/String;

    .line 760
    move-wide/from16 v1, p24

    iput-wide v1, v0, Landroid/provider/CallLog$AddCallParams;->mLatitude:D

    .line 761
    move-wide/from16 v1, p26

    iput-wide v1, v0, Landroid/provider/CallLog$AddCallParams;->mLongitude:D

    .line 762
    move-object/from16 v1, p28

    iput-object v1, v0, Landroid/provider/CallLog$AddCallParams;->mPictureUri:Landroid/net/Uri;

    .line 763
    move/from16 v2, p29

    iput v2, v0, Landroid/provider/CallLog$AddCallParams;->mIsPhoneAccountMigrationPending:I

    .line 764
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telecom/CallerInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JIJZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JILjava/lang/String;DDLandroid/net/Uri;ILandroid/provider/CallLog-IA;)V
    .registers 31

    invoke-direct/range {p0 .. p29}, Landroid/provider/CallLog$AddCallParams;-><init>(Landroid/telecom/CallerInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JIJZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JILjava/lang/String;DDLandroid/net/Uri;I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telecom/CallerInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JIJZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JILjava/lang/String;DDLandroid/net/Uri;IZLjava/lang/String;)V
    .registers 48
    .param p1, "callerInfo"    # Landroid/telecom/CallerInfo;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "postDialDigits"    # Ljava/lang/String;
    .param p4, "viaNumber"    # Ljava/lang/String;
    .param p5, "presentation"    # I
    .param p6, "callType"    # I
    .param p7, "features"    # I
    .param p8, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p9, "start"    # J
    .param p11, "duration"    # I
    .param p12, "dataUsage"    # J
    .param p14, "addForAllUsers"    # Z
    .param p15, "userToBeInsertedTo"    # Landroid/os/UserHandle;
    .param p16, "isRead"    # Z
    .param p17, "callBlockReason"    # I
    .param p18, "callScreeningAppName"    # Ljava/lang/CharSequence;
    .param p19, "callScreeningComponentName"    # Ljava/lang/String;
    .param p20, "missedReason"    # J
    .param p22, "priority"    # I
    .param p23, "subject"    # Ljava/lang/String;
    .param p24, "latitude"    # D
    .param p26, "longitude"    # D
    .param p28, "pictureUri"    # Landroid/net/Uri;
    .param p29, "isPhoneAccountMigrationPending"    # I
    .param p30, "isBusinessCall"    # Z
    .param p31, "assertedDisplayName"    # Ljava/lang/String;

    .line 775
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 724
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    iput-wide v1, v0, Landroid/provider/CallLog$AddCallParams;->mLatitude:D

    .line 725
    iput-wide v1, v0, Landroid/provider/CallLog$AddCallParams;->mLongitude:D

    .line 776
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/provider/CallLog$AddCallParams;->mCallerInfo:Landroid/telecom/CallerInfo;

    .line 777
    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/provider/CallLog$AddCallParams;->mNumber:Ljava/lang/String;

    .line 778
    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/provider/CallLog$AddCallParams;->mPostDialDigits:Ljava/lang/String;

    .line 779
    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/provider/CallLog$AddCallParams;->mViaNumber:Ljava/lang/String;

    .line 780
    move/from16 v5, p5

    iput v5, v0, Landroid/provider/CallLog$AddCallParams;->mPresentation:I

    .line 781
    move/from16 v6, p6

    iput v6, v0, Landroid/provider/CallLog$AddCallParams;->mCallType:I

    .line 782
    move/from16 v7, p7

    iput v7, v0, Landroid/provider/CallLog$AddCallParams;->mFeatures:I

    .line 783
    move-object/from16 v8, p8

    iput-object v8, v0, Landroid/provider/CallLog$AddCallParams;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 784
    move-wide/from16 v9, p9

    iput-wide v9, v0, Landroid/provider/CallLog$AddCallParams;->mStart:J

    .line 785
    move/from16 v11, p11

    iput v11, v0, Landroid/provider/CallLog$AddCallParams;->mDuration:I

    .line 786
    move-wide/from16 v12, p12

    iput-wide v12, v0, Landroid/provider/CallLog$AddCallParams;->mDataUsage:J

    .line 787
    move/from16 v14, p14

    iput-boolean v14, v0, Landroid/provider/CallLog$AddCallParams;->mAddForAllUsers:Z

    .line 788
    move-object/from16 v15, p15

    iput-object v15, v0, Landroid/provider/CallLog$AddCallParams;->mUserToBeInsertedTo:Landroid/os/UserHandle;

    .line 789
    move/from16 v1, p16

    iput-boolean v1, v0, Landroid/provider/CallLog$AddCallParams;->mIsRead:Z

    .line 790
    move/from16 v1, p17

    iput v1, v0, Landroid/provider/CallLog$AddCallParams;->mCallBlockReason:I

    .line 791
    move-object/from16 v1, p18

    iput-object v1, v0, Landroid/provider/CallLog$AddCallParams;->mCallScreeningAppName:Ljava/lang/CharSequence;

    .line 792
    move-object/from16 v1, p19

    iput-object v1, v0, Landroid/provider/CallLog$AddCallParams;->mCallScreeningComponentName:Ljava/lang/String;

    .line 793
    move-wide/from16 v1, p20

    iput-wide v1, v0, Landroid/provider/CallLog$AddCallParams;->mMissedReason:J

    .line 794
    move/from16 v1, p22

    iput v1, v0, Landroid/provider/CallLog$AddCallParams;->mPriority:I

    .line 795
    move-object/from16 v2, p23

    iput-object v2, v0, Landroid/provider/CallLog$AddCallParams;->mSubject:Ljava/lang/String;

    .line 796
    move-wide/from16 v1, p24

    iput-wide v1, v0, Landroid/provider/CallLog$AddCallParams;->mLatitude:D

    .line 797
    move-wide/from16 v1, p26

    iput-wide v1, v0, Landroid/provider/CallLog$AddCallParams;->mLongitude:D

    .line 798
    move-object/from16 v1, p28

    iput-object v1, v0, Landroid/provider/CallLog$AddCallParams;->mPictureUri:Landroid/net/Uri;

    .line 799
    move/from16 v2, p29

    iput v2, v0, Landroid/provider/CallLog$AddCallParams;->mIsPhoneAccountMigrationPending:I

    .line 800
    move/from16 v1, p30

    iput-boolean v1, v0, Landroid/provider/CallLog$AddCallParams;->mIsBusinessCall:Z

    .line 801
    move-object/from16 v1, p31

    iput-object v1, v0, Landroid/provider/CallLog$AddCallParams;->mAssertedDisplayName:Ljava/lang/String;

    .line 802
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telecom/CallerInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JIJZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JILjava/lang/String;DDLandroid/net/Uri;IZLjava/lang/String;Landroid/provider/CallLog-IA;)V
    .registers 33

    invoke-direct/range {p0 .. p31}, Landroid/provider/CallLog$AddCallParams;-><init>(Landroid/telecom/CallerInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JIJZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JILjava/lang/String;DDLandroid/net/Uri;IZLjava/lang/String;)V

    return-void
.end method
