.class public Landroid/app/servertransaction/WindowStateResizeItem;
.super Landroid/app/servertransaction/WindowStateTransactionItem;
.source "WindowStateResizeItem.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/WindowStateResizeItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "WindowStateResizeItem"


# instance fields
.field private final blacklist mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

.field private final blacklist mAlwaysConsumeSystemBars:Z

.field private final blacklist mConfiguration:Landroid/util/MergedConfiguration;

.field private final blacklist mDisplayId:I

.field private final blacklist mDragResizing:Z

.field private final blacklist mForceLayout:Z

.field private final blacklist mFrames:Landroid/window/ClientWindowFrames;

.field private final blacklist mInsetsState:Landroid/view/InsetsState;

.field private final blacklist mReportDraw:Z

.field private final blacklist mSyncSeqId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 138
    new-instance v0, Landroid/app/servertransaction/WindowStateResizeItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/WindowStateResizeItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/WindowStateResizeItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 125
    invoke-direct {p0, p1}, Landroid/app/servertransaction/WindowStateTransactionItem;-><init>(Landroid/os/Parcel;)V

    .line 126
    sget-object v0, Landroid/window/ClientWindowFrames;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/ClientWindowFrames;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/ClientWindowFrames;

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mFrames:Landroid/window/ClientWindowFrames;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    .line 128
    sget-object v0, Landroid/util/MergedConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MergedConfiguration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MergedConfiguration;

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mConfiguration:Landroid/util/MergedConfiguration;

    .line 129
    sget-object v0, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsState;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsState;

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mInsetsState:Landroid/view/InsetsState;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mForceLayout:Z

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mAlwaysConsumeSystemBars:Z

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDisplayId:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mSyncSeqId:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDragResizing:Z

    .line 135
    sget-object v0, Landroid/window/ActivityWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/ActivityWindowInfo;

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 136
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/WindowStateResizeItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/WindowStateResizeItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/IWindow;Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIIZLandroid/window/ActivityWindowInfo;)V
    .registers 14
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "frames"    # Landroid/window/ClientWindowFrames;
    .param p3, "reportDraw"    # Z
    .param p4, "configuration"    # Landroid/util/MergedConfiguration;
    .param p5, "insetsState"    # Landroid/view/InsetsState;
    .param p6, "forceLayout"    # Z
    .param p7, "alwaysConsumeSystemBars"    # Z
    .param p8, "displayId"    # I
    .param p9, "syncSeqId"    # I
    .param p10, "dragResizing"    # Z
    .param p11, "activityWindowInfo"    # Landroid/window/ActivityWindowInfo;

    .line 70
    invoke-direct {p0, p1}, Landroid/app/servertransaction/WindowStateTransactionItem;-><init>(Landroid/view/IWindow;)V

    .line 71
    new-instance v0, Landroid/window/ClientWindowFrames;

    invoke-direct {v0, p2}, Landroid/window/ClientWindowFrames;-><init>(Landroid/window/ClientWindowFrames;)V

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mFrames:Landroid/window/ClientWindowFrames;

    .line 72
    new-instance v0, Landroid/util/MergedConfiguration;

    invoke-direct {v0, p4}, Landroid/util/MergedConfiguration;-><init>(Landroid/util/MergedConfiguration;)V

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mConfiguration:Landroid/util/MergedConfiguration;

    .line 73
    new-instance v0, Landroid/view/InsetsState;

    const/4 v1, 0x1

    invoke-direct {v0, p5, v1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mInsetsState:Landroid/view/InsetsState;

    .line 74
    if-eqz p11, :cond_23

    .line 75
    new-instance v0, Landroid/window/ActivityWindowInfo;

    invoke-direct {v0, p11}, Landroid/window/ActivityWindowInfo;-><init>(Landroid/window/ActivityWindowInfo;)V

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    goto :goto_26

    .line 77
    :cond_23
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 79
    :goto_26
    iput-boolean p3, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    .line 80
    iput-boolean p6, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mForceLayout:Z

    .line 81
    iput-boolean p7, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mAlwaysConsumeSystemBars:Z

    .line 82
    iput p8, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDisplayId:I

    .line 83
    iput p9, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mSyncSeqId:I

    .line 84
    iput-boolean p10, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDragResizing:Z

    .line 85
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 150
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 151
    return v0

    .line 153
    :cond_4
    invoke-super {p0, p1}, Landroid/app/servertransaction/WindowStateTransactionItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 154
    return v2

    .line 156
    :cond_c
    move-object v1, p1

    check-cast v1, Landroid/app/servertransaction/WindowStateResizeItem;

    .line 157
    .local v1, "other":Landroid/app/servertransaction/WindowStateResizeItem;
    iget-object v3, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mFrames:Landroid/window/ClientWindowFrames;

    iget-object v4, v1, Landroid/app/servertransaction/WindowStateResizeItem;->mFrames:Landroid/window/ClientWindowFrames;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    iget-boolean v3, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    iget-boolean v4, v1, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    if-ne v3, v4, :cond_5c

    iget-object v3, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mConfiguration:Landroid/util/MergedConfiguration;

    iget-object v4, v1, Landroid/app/servertransaction/WindowStateResizeItem;->mConfiguration:Landroid/util/MergedConfiguration;

    .line 159
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    iget-object v3, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mInsetsState:Landroid/view/InsetsState;

    iget-object v4, v1, Landroid/app/servertransaction/WindowStateResizeItem;->mInsetsState:Landroid/view/InsetsState;

    .line 160
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    iget-boolean v3, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mForceLayout:Z

    iget-boolean v4, v1, Landroid/app/servertransaction/WindowStateResizeItem;->mForceLayout:Z

    if-ne v3, v4, :cond_5c

    iget-boolean v3, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mAlwaysConsumeSystemBars:Z

    iget-boolean v4, v1, Landroid/app/servertransaction/WindowStateResizeItem;->mAlwaysConsumeSystemBars:Z

    if-ne v3, v4, :cond_5c

    iget v3, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDisplayId:I

    iget v4, v1, Landroid/app/servertransaction/WindowStateResizeItem;->mDisplayId:I

    if-ne v3, v4, :cond_5c

    iget v3, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mSyncSeqId:I

    iget v4, v1, Landroid/app/servertransaction/WindowStateResizeItem;->mSyncSeqId:I

    if-ne v3, v4, :cond_5c

    iget-boolean v3, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDragResizing:Z

    iget-boolean v4, v1, Landroid/app/servertransaction/WindowStateResizeItem;->mDragResizing:Z

    if-ne v3, v4, :cond_5c

    iget-object v3, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    iget-object v4, v1, Landroid/app/servertransaction/WindowStateResizeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 166
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    goto :goto_5d

    :cond_5c
    move v0, v2

    .line 157
    :goto_5d
    return v0
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/view/IWindow;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 18
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "window"    # Landroid/view/IWindow;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 90
    nop

    .line 91
    iget-boolean v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    if-eqz v0, :cond_9

    const-string/jumbo v0, "windowResizedReport"

    goto :goto_c

    :cond_9
    const-string/jumbo v0, "windowResized"

    .line 90
    :goto_c
    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 93
    :try_start_11
    iget-object v4, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mFrames:Landroid/window/ClientWindowFrames;

    iget-boolean v5, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    iget-object v6, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mConfiguration:Landroid/util/MergedConfiguration;

    iget-object v7, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mInsetsState:Landroid/view/InsetsState;

    iget-boolean v8, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mForceLayout:Z

    iget-boolean v9, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mAlwaysConsumeSystemBars:Z

    iget v10, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDisplayId:I

    iget v11, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mSyncSeqId:I

    iget-boolean v12, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDragResizing:Z

    iget-object v13, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    move-object/from16 v3, p2

    invoke-interface/range {v3 .. v13}, Landroid/view/IWindow;->resized(Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIIZLandroid/window/ActivityWindowInfo;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_2a} :catch_2b

    .line 101
    goto :goto_33

    .line 96
    :catch_2b
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WindowStateResizeItem"

    const-string v4, "The original window no longer exists in the new process"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_33
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 103
    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 171
    const/16 v0, 0x11

    .line 172
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-super {p0}, Landroid/app/servertransaction/WindowStateTransactionItem;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 173
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mFrames:Landroid/window/ClientWindowFrames;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 174
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    add-int/2addr v1, v2

    .line 175
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mConfiguration:Landroid/util/MergedConfiguration;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 176
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mInsetsState:Landroid/view/InsetsState;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 177
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mForceLayout:Z

    add-int/2addr v0, v2

    .line 178
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mAlwaysConsumeSystemBars:Z

    add-int/2addr v1, v2

    .line 179
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDisplayId:I

    add-int/2addr v0, v2

    .line 180
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mSyncSeqId:I

    add-int/2addr v1, v2

    .line 181
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDragResizing:Z

    add-int/2addr v0, v2

    .line 182
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 183
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowStateResizeItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/app/servertransaction/WindowStateTransactionItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reportDrawn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", configuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activityWindowInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 110
    invoke-super {p0, p1, p2}, Landroid/app/servertransaction/WindowStateTransactionItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 111
    iget-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mFrames:Landroid/window/ClientWindowFrames;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 112
    iget-boolean v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 113
    iget-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 114
    iget-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 115
    iget-boolean v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mForceLayout:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 116
    iget-boolean v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mAlwaysConsumeSystemBars:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 117
    iget v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mSyncSeqId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-boolean v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDragResizing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 120
    iget-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 121
    return-void
.end method
