.class Landroid/nfc/cardemulation/ApduServiceInfo$1;
.super Ljava/lang/Object;
.source "ApduServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/ApduServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/nfc/cardemulation/ApduServiceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1048
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .registers 25
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1051
    move-object/from16 v0, p1

    sget-object v1, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1052
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1053
    .local v5, "description":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_19

    move v1, v2

    goto :goto_1a

    :cond_19
    move v1, v4

    .line 1054
    .local v1, "onHost":Z
    :goto_1a
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1055
    .local v13, "offHostName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1056
    .local v14, "staticOffHostName":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1057
    .local v6, "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1058
    .local v18, "numStaticGroups":I
    if-lez v18, :cond_32

    .line 1059
    sget-object v7, Landroid/nfc/cardemulation/AidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v6, v7}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 1061
    :cond_32
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1062
    .local v7, "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1063
    .local v19, "numDynamicGroups":I
    if-lez v19, :cond_42

    .line 1064
    sget-object v8, Landroid/nfc/cardemulation/AidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v7, v8}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 1066
    :cond_42
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4a

    move v8, v2

    goto :goto_4b

    :cond_4a
    move v8, v4

    .line 1067
    .local v8, "requiresUnlock":Z
    :goto_4b
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_53

    move v9, v2

    goto :goto_54

    :cond_53
    move v9, v4

    .line 1068
    .local v9, "requiresScreenOn":Z
    :goto_54
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1069
    .local v10, "bannerResource":I
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1070
    .local v11, "uid":I
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1071
    .local v12, "settingsActivityName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_68

    move v15, v2

    goto :goto_69

    :cond_68
    move v15, v4

    .line 1072
    .local v15, "isEnabled":Z
    :goto_69
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1073
    .local v2, "autoTransactSize":I
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 1075
    .local v4, "autoTransact":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    move/from16 v17, v1

    .end local v1    # "onHost":Z
    .local v17, "onHost":Z
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    move-object/from16 v16, v3

    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .local v16, "info":Landroid/content/pm/ResolveInfo;
    const-class v3, Ljava/lang/String;

    move-object/from16 v20, v5

    .end local v5    # "description":Ljava/lang/String;
    .local v20, "description":Ljava/lang/String;
    const-class v5, Ljava/lang/Boolean;

    invoke-virtual {v0, v4, v1, v3, v5}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1077
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1078
    .local v1, "autoTransactPatternSize":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 1080
    .local v3, "autoTransactPatterns":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/util/regex/Pattern;Ljava/lang/Boolean;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move/from16 v21, v1

    .end local v1    # "autoTransactPatternSize":I
    .local v21, "autoTransactPatternSize":I
    const-class v1, Ljava/util/regex/Pattern;

    move/from16 v22, v2

    .end local v2    # "autoTransactSize":I
    .local v22, "autoTransactSize":I
    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1082
    new-instance v2, Landroid/nfc/cardemulation/ApduServiceInfo;

    move/from16 v5, v17

    move-object/from16 v17, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v4

    move v4, v5

    move-object/from16 v5, v20

    .end local v20    # "description":Ljava/lang/String;
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    .local v4, "onHost":Z
    .restart local v5    # "description":Ljava/lang/String;
    .local v16, "autoTransact":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .local v17, "autoTransactPatterns":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/util/regex/Pattern;Ljava/lang/Boolean;>;"
    invoke-direct/range {v2 .. v17}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/List;Ljava/util/List;ZZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;)V

    move-object/from16 v20, v16

    move-object/from16 v16, v3

    move-object/from16 v3, v17

    move/from16 v17, v4

    move-object/from16 v4, v20

    move-object/from16 v20, v5

    .end local v5    # "description":Ljava/lang/String;
    .local v3, "autoTransactPatterns":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/util/regex/Pattern;Ljava/lang/Boolean;>;"
    .local v4, "autoTransact":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .local v16, "info":Landroid/content/pm/ResolveInfo;
    .local v17, "onHost":Z
    .restart local v20    # "description":Ljava/lang/String;
    return-object v2
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

    .line 1048
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfo;
    .registers 3
    .param p1, "size"    # I

    .line 1090
    new-array v0, p1, [Landroid/nfc/cardemulation/ApduServiceInfo;

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

    .line 1048
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo$1;->newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object p1

    return-object p1
.end method
