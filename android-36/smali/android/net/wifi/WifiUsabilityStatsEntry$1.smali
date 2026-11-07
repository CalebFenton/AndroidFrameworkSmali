.class Landroid/net/wifi/WifiUsabilityStatsEntry$1;
.super Ljava/lang/Object;
.source "WifiUsabilityStatsEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiUsabilityStatsEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiUsabilityStatsEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiUsabilityStatsEntry;
    .registers 78
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1321
    move-object/from16 v0, p1

    new-instance v1, Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 1322
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1323
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 1324
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 1325
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 1326
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .line 1327
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v32

    .line 1328
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v36

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v38

    .line 1329
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v39

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 1330
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v42

    move-object/from16 v43, v1

    sget-object v1, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;

    move-object/from16 v44, v1

    sget-object v1, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1331
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    move-object/from16 v45, v1

    sget-object v1, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1332
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;

    .line 1333
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v46

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v47

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v48

    .line 1334
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v49

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v50

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 1335
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v52

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v53

    const-class v54, Landroid/net/wifi/WifiUsabilityStatsEntry$LinkStats;

    .line 1336
    move-object/from16 v55, v1

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v54

    move-object/from16 v1, v55

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 1337
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v56

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v57

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v59

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v61

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 1338
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v63

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v64

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v65

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v66

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v67

    .line 1339
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v68

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v69

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v70

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v71

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 1340
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v73

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v74

    move-object/from16 v75, v45

    move-object/from16 v45, v1

    move-object/from16 v1, v43

    move-object/from16 v43, v44

    move-object/from16 v44, v75

    invoke-direct/range {v1 .. v74}, Landroid/net/wifi/WifiUsabilityStatsEntry;-><init>(JIIJJJJJJJJJJJJJJJJIIIII[Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;[Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;IZZZIIIZLandroid/util/SparseArray;IIJJIIIIIIZIZIIIII)V

    .line 1321
    return-object v1
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

    .line 1319
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiUsabilityStatsEntry$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiUsabilityStatsEntry;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/WifiUsabilityStatsEntry;
    .registers 3
    .param p1, "size"    # I

    .line 1345
    new-array v0, p1, [Landroid/net/wifi/WifiUsabilityStatsEntry;

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

    .line 1319
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiUsabilityStatsEntry$1;->newArray(I)[Landroid/net/wifi/WifiUsabilityStatsEntry;

    move-result-object p1

    return-object p1
.end method
