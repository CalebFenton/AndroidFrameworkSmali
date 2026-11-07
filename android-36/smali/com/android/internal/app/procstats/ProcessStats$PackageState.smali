.class public final Lcom/android/internal/app/procstats/ProcessStats$PackageState;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageState"
.end annotation


# instance fields
.field public final blacklist mAssociations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/AssociationState;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist mPackageName:Ljava/lang/String;

.field public final blacklist mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

.field public final blacklist mProcesses:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist mUid:I

.field public final blacklist mVersionCode:J


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IJ)V
    .registers 7
    .param p1, "procStats"    # Lcom/android/internal/app/procstats/ProcessStats;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "versionCode"    # J

    .line 2615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2608
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .line 2609
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 2610
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    .line 2616
    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 2617
    iput p3, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    .line 2618
    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    .line 2619
    iput-wide p4, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mVersionCode:J

    .line 2620
    return-void
.end method


# virtual methods
.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;JJI)V
    .registers 18
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "now"    # J
    .param p6, "section"    # I

    .line 2642
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 2644
    .local v8, "token":J
    const-wide v2, 0x10900000001L

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2645
    const-wide v2, 0x10500000002L

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-virtual {p1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2646
    const-wide v2, 0x10300000003L

    iget-wide v4, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mVersionCode:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2648
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_50

    .line 2649
    const/4 v0, 0x0

    move v10, v0

    .local v10, "ip":I
    :goto_28
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v10, v0, :cond_50

    .line 2650
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 2651
    .local v4, "procName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessState;

    .line 2652
    .local v0, "procState":Lcom/android/internal/app/procstats/ProcessState;
    const-wide v2, 0x20b00000004L

    iget v5, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    move-object v1, p1

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IJ)V

    .line 2649
    .end local v0    # "procState":Lcom/android/internal/app/procstats/ProcessState;
    .end local v4    # "procName":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_28

    .line 2657
    .end local v10    # "ip":I
    :cond_50
    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_73

    .line 2658
    const/4 v0, 0x0

    move v6, v0

    .local v6, "is":I
    :goto_56
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v6, v0, :cond_73

    .line 2659
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ServiceState;

    .line 2660
    .local v0, "serviceState":Lcom/android/internal/app/procstats/ServiceState;
    const-wide v2, 0x20b00000005L

    move-object v1, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ServiceState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 2658
    .end local v0    # "serviceState":Lcom/android/internal/app/procstats/ServiceState;
    add-int/lit8 v6, v6, 0x1

    goto :goto_56

    .line 2665
    .end local v6    # "is":I
    :cond_73
    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_96

    .line 2666
    const/4 v0, 0x0

    move v6, v0

    .local v6, "ia":I
    :goto_79
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v6, v0, :cond_96

    .line 2667
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/AssociationState;

    .line 2668
    .local v0, "ascState":Lcom/android/internal/app/procstats/AssociationState;
    const-wide v2, 0x20b00000006L

    move-object v1, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/AssociationState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 2666
    .end local v0    # "ascState":Lcom/android/internal/app/procstats/AssociationState;
    add-int/lit8 v6, v6, 0x1

    goto :goto_79

    .line 2673
    .end local v6    # "ia":I
    :cond_96
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2674
    return-void
.end method

.method public blacklist getAssociationStateLocked(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;)Lcom/android/internal/app/procstats/AssociationState;
    .registers 10
    .param p1, "proc"    # Lcom/android/internal/app/procstats/ProcessState;
    .param p2, "className"    # Ljava/lang/String;

    .line 2623
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/AssociationState;

    .line 2624
    .local v0, "as":Lcom/android/internal/app/procstats/AssociationState;
    if-eqz v0, :cond_10

    .line 2626
    if-eqz p1, :cond_f

    .line 2627
    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/AssociationState;->setProcess(Lcom/android/internal/app/procstats/ProcessState;)V

    .line 2629
    :cond_f
    return-object v0

    .line 2631
    :cond_10
    new-instance v1, Lcom/android/internal/app/procstats/AssociationState;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v3, p0

    move-object v6, p1

    move-object v4, p2

    .end local p1    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .end local p2    # "className":Ljava/lang/String;
    .local v4, "className":Ljava/lang/String;
    .local v6, "proc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/procstats/AssociationState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$PackageState;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V

    .line 2633
    .end local v0    # "as":Lcom/android/internal/app/procstats/AssociationState;
    .local v1, "as":Lcom/android/internal/app/procstats/AssociationState;
    iget-object p1, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {p1, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2635
    return-object v1
.end method
