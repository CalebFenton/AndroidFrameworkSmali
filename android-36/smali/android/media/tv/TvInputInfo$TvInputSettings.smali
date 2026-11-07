.class public final Landroid/media/tv/TvInputInfo$TvInputSettings;
.super Ljava/lang/Object;
.source "TvInputInfo.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TvInputSettings"
.end annotation


# static fields
.field private static final greylist-max-o CUSTOM_NAME_SEPARATOR:Ljava/lang/String; = ","

.field private static final greylist-max-o TV_INPUT_SEPARATOR:Ljava/lang/String; = ":"


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetCustomLabel(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/media/tv/TvInputInfo$TvInputSettings;->getCustomLabel(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisHidden(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/media/tv/TvInputInfo$TvInputSettings;->isHidden(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1056
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o ensureValidField(Ljava/lang/String;)V
    .registers 4
    .param p0, "value"    # Ljava/lang/String;

    .line 1187
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1190
    return-void

    .line 1188
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should not empty "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o getCustomLabel(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1063
    invoke-static {p0, p2}, Landroid/media/tv/TvInputInfo$TvInputSettings;->getCustomLabels(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static whitelist getCustomLabels(Landroid/content/Context;I)Ljava/util/Map;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1097
    nop

    .line 1098
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1097
    const-string v1, "tv_input_custom_labels"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1099
    .local v0, "labelsString":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1100
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1101
    return-object v1

    .line 1103
    :cond_17
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1104
    .local v2, "pairs":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_20
    if-ge v5, v3, :cond_3d

    aget-object v6, v2, v5

    .line 1105
    .local v6, "pairString":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1106
    .local v7, "pair":[Ljava/lang/String;
    aget-object v8, v7, v4

    invoke-static {v8}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    .end local v6    # "pairString":Ljava/lang/String;
    .end local v7    # "pair":[Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 1108
    :cond_3d
    return-object v1
.end method

.method public static whitelist getHiddenTvInputIds(Landroid/content/Context;I)Ljava/util/Set;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1075
    nop

    .line 1076
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1075
    const-string v1, "tv_input_hidden_inputs"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1077
    .local v0, "hiddenIdsString":Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1078
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1079
    return-object v1

    .line 1081
    :cond_17
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1082
    .local v2, "ids":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1f
    if-ge v4, v3, :cond_2d

    aget-object v5, v2, v4

    .line 1083
    .local v5, "id":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1082
    .end local v5    # "id":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 1085
    :cond_2d
    return-object v1
.end method

.method private static greylist-max-o isHidden(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1059
    invoke-static {p0, p2}, Landroid/media/tv/TvInputInfo$TvInputSettings;->getHiddenTvInputIds(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist putCustomLabels(Landroid/content/Context;Ljava/util/Map;I)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1159
    .local p1, "customLabels":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1160
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 1161
    .local v1, "firstItem":Z
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1162
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/media/tv/TvInputInfo$TvInputSettings;->ensureValidField(Ljava/lang/String;)V

    .line 1163
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/media/tv/TvInputInfo$TvInputSettings;->ensureValidField(Ljava/lang/String;)V

    .line 1164
    if-eqz v1, :cond_30

    .line 1165
    const/4 v1, 0x0

    goto :goto_35

    .line 1167
    :cond_30
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    :goto_35
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_e

    .line 1173
    :cond_55
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1173
    const-string v4, "tv_input_custom_labels"

    invoke-static {v2, v4, v3, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1177
    const-string v2, "tv_input"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvInputManager;

    .line 1178
    .local v2, "tm":Landroid/media/tv/TvInputManager;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_72
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_88

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1179
    .local v4, "inputId":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputManager;->getTvInputInfo(Ljava/lang/String;)Landroid/media/tv/TvInputInfo;

    move-result-object v5

    .line 1180
    .local v5, "info":Landroid/media/tv/TvInputInfo;
    if-eqz v5, :cond_87

    .line 1181
    invoke-virtual {v2, v5}, Landroid/media/tv/TvInputManager;->updateTvInputInfo(Landroid/media/tv/TvInputInfo;)V

    .line 1183
    .end local v4    # "inputId":Ljava/lang/String;
    .end local v5    # "info":Landroid/media/tv/TvInputInfo;
    :cond_87
    goto :goto_72

    .line 1184
    :cond_88
    return-void
.end method

.method public static whitelist putHiddenTvInputs(Landroid/content/Context;Ljava/util/Set;I)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1123
    .local p1, "hiddenInputIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1124
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 1125
    .local v1, "firstItem":Z
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1126
    .local v3, "inputId":Ljava/lang/String;
    invoke-static {v3}, Landroid/media/tv/TvInputInfo$TvInputSettings;->ensureValidField(Ljava/lang/String;)V

    .line 1127
    if-eqz v1, :cond_1d

    .line 1128
    const/4 v1, 0x0

    goto :goto_22

    .line 1130
    :cond_1d
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    :goto_22
    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    .end local v3    # "inputId":Ljava/lang/String;
    goto :goto_a

    .line 1134
    :cond_2a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1134
    const-string v4, "tv_input_hidden_inputs"

    invoke-static {v2, v4, v3, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1138
    const-string v2, "tv_input"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvInputManager;

    .line 1139
    .local v2, "tm":Landroid/media/tv/TvInputManager;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1140
    .local v4, "inputId":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputManager;->getTvInputInfo(Ljava/lang/String;)Landroid/media/tv/TvInputInfo;

    move-result-object v5

    .line 1141
    .local v5, "info":Landroid/media/tv/TvInputInfo;
    if-eqz v5, :cond_58

    .line 1142
    invoke-virtual {v2, v5}, Landroid/media/tv/TvInputManager;->updateTvInputInfo(Landroid/media/tv/TvInputInfo;)V

    .line 1144
    .end local v4    # "inputId":Ljava/lang/String;
    .end local v5    # "info":Landroid/media/tv/TvInputInfo;
    :cond_58
    goto :goto_43

    .line 1145
    :cond_59
    return-void
.end method
