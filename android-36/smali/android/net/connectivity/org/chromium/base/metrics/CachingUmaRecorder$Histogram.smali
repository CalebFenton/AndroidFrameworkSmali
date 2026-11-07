.class Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;
.super Ljava/lang/Object;
.source "CachingUmaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Histogram"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram$Type;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final blacklist MAX_SAMPLE_COUNT:I = 0x100


# instance fields
.field private final blacklist mMax:I

.field private final blacklist mMin:I

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mNumBuckets:I

.field private final blacklist mSamples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSamples(Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->mSamples:Ljava/util/List;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    const-class v0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;

    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/String;III)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "numBuckets"    # I

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    nop

    .line 109
    iput p1, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->mType:I

    .line 110
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->mName:Ljava/lang/String;

    .line 111
    iput p3, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->mMin:I

    .line 112
    iput p4, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->mMax:I

    .line 113
    iput p5, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->mNumBuckets:I

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->mSamples:Ljava/util/List;

    .line 116
    return-void
.end method


# virtual methods
.method declared-synchronized blacklist addSample(ILjava/lang/String;IIII)Z
    .registers 9
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "sample"    # I
    .param p4, "min"    # I
    .param p5, "max"    # I
    .param p6, "numBuckets"    # I

    monitor-enter p0

    .line 134
    nop

    .line 135
    nop

    .line 136
    nop

    .line 137
    nop

    .line 138
    nop

    .line 139
    :try_start_6
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->mSamples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_22

    const/16 v1, 0x100

    if-lt v0, v1, :cond_14

    .line 141
    nop

    .line 142
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 144
    :cond_14
    :try_start_14
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->mSamples:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_22

    .line 145
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 133
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;
    .end local p1    # "type":I
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "sample":I
    .end local p4    # "min":I
    .end local p5    # "max":I
    .end local p6    # "numBuckets":I
    :goto_20
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_22

    throw p1

    :catchall_22
    move-exception p1

    goto :goto_20
.end method

.method declared-synchronized blacklist flushTo(Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;)I
    .registers 16
    .param p1, "recorder"    # Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    monitor-enter p0

    .line 155
    :try_start_1
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->mType:I

    packed-switch v0, :pswitch_data_ac

    .line 181
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;
    move-object v2, p1

    .end local p1    # "recorder":Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;
    .local v2, "recorder":Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;
    goto/16 :goto_9b

    .line 175
    .end local v2    # "recorder":Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;
    .restart local p1    # "recorder":Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;
    :pswitch_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->mSamples:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 176
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->mSamples:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 177
    .local v1, "sample":I
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->mName:Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->recordSparseHistogram(Ljava/lang/String;I)V

    .line 175
    .end local v1    # "sample":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 179
    .end local v0    # "i":I
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;
    :cond_26
    move-object v2, p1

    goto/16 :goto_9b

    .line 169
    :pswitch_29
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2a
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->mSamples:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4f

    .line 170
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->mSamples:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v4, v1

    .line 171
    .local v4, "sample":I
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->mName:Ljava/lang/String;

    iget v5, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->mMin:I

    iget v6, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->mMax:I

    iget v7, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->mNumBuckets:I

    move-object v2, p1

    .end local p1    # "recorder":Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;
    .restart local v2    # "recorder":Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;
    invoke-interface/range {v2 .. v7}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->recordLinearHistogram(Ljava/lang/String;IIII)V

    .line 169
    .end local v4    # "sample":I
    add-int/lit8 v0, v0, 0x1

    move-object p1, v2

    goto :goto_2a

    .end local v2    # "recorder":Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;
    .restart local p1    # "recorder":Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;
    :cond_4f
    move-object v2, p1

    .line 173
    .end local v0    # "i":I
    .end local p1    # "recorder":Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;
    .restart local v2    # "recorder":Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;
    goto :goto_9b

    .line 163
    .end local v2    # "recorder":Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;
    .restart local p1    # "recorder":Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;
    :pswitch_51
    move-object v2, p1

    .end local p1    # "recorder":Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;
    .restart local v2    # "recorder":Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;
    const/4 p1, 0x0

    .local p1, "i":I
    :goto_53
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->mSamples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_76

    .line 164
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->mSamples:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 165
    .local v10, "sample":I
    iget-object v9, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->mName:Ljava/lang/String;

    iget v11, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->mMin:I

    iget v12, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->mMax:I

    iget v13, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->mNumBuckets:I

    move-object v8, v2

    .end local v2    # "recorder":Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;
    .local v8, "recorder":Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;
    invoke-interface/range {v8 .. v13}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->recordExponentialHistogram(Ljava/lang/String;IIII)V

    .line 163
    .end local v8    # "recorder":Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;
    .end local v10    # "sample":I
    .restart local v2    # "recorder":Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;
    add-int/lit8 p1, p1, 0x1

    goto :goto_53

    .line 167
    .end local p1    # "i":I
    :cond_76
    goto :goto_9b

    .line 157
    .end local v2    # "recorder":Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;
    .local p1, "recorder":Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;
    :pswitch_77
    move-object v2, p1

    .end local p1    # "recorder":Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;
    .restart local v2    # "recorder":Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;
    const/4 p1, 0x0

    .local p1, "i":I
    :goto_79
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->mSamples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_9a

    .line 158
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->mSamples:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 159
    .local v0, "sample":I
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->mName:Ljava/lang/String;

    if-eqz v0, :cond_93

    const/4 v3, 0x1

    goto :goto_94

    :cond_93
    const/4 v3, 0x0

    :goto_94
    invoke-interface {v2, v1, v3}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 157
    .end local v0    # "sample":I
    add-int/lit8 p1, p1, 0x1

    goto :goto_79

    .line 161
    .end local p1    # "i":I
    :cond_9a
    nop

    .line 183
    :goto_9b
    iget-object p1, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->mSamples:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 184
    .local p1, "count":I
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;->mSamples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_a6
    .catchall {:try_start_1 .. :try_end_a6} :catchall_a8

    .line 185
    monitor-exit p0

    return p1

    .line 154
    .end local v2    # "recorder":Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;
    .end local p1    # "count":I
    :catchall_a8
    move-exception v0

    move-object p1, v0

    :try_start_aa
    monitor-exit p0
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a8

    throw p1

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_77
        :pswitch_51
        :pswitch_29
        :pswitch_9
    .end packed-switch
.end method
