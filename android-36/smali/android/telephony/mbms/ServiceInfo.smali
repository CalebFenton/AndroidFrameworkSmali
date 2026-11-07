.class public Landroid/telephony/mbms/ServiceInfo;
.super Ljava/lang/Object;
.source "ServiceInfo.java"


# static fields
.field static final greylist-max-o MAP_LIMIT:I = 0x3e8


# instance fields
.field private final greylist-max-o className:Ljava/lang/String;

.field private final greylist-max-o locales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o names:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o serviceId:Ljava/lang/String;

.field private final greylist-max-o sessionEndTime:Ljava/util/Date;

.field private final greylist-max-o sessionStartTime:Ljava/util/Date;


# direct methods
.method protected constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .local v0, "mapCount":I
    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_9f

    if-ltz v0, :cond_9f

    .line 81
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    .line 82
    :goto_14
    add-int/lit8 v2, v0, -0x1

    .end local v0    # "mapCount":I
    .local v2, "mapCount":I
    if-lez v0, :cond_31

    .line 83
    const-class v0, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v3, Ljava/util/Locale;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 84
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v3    # "name":Ljava/lang/String;
    move v0, v2

    goto :goto_14

    .line 87
    :cond_31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->className:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .local v0, "localesCount":I
    if-gt v0, v1, :cond_86

    if-ltz v0, :cond_86

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    .line 93
    :goto_46
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "localesCount":I
    .local v1, "localesCount":I
    if-lez v0, :cond_5f

    .line 94
    const-class v0, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v3, Ljava/util/Locale;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 95
    .local v0, "l":Ljava/util/Locale;
    iget-object v3, p0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v0    # "l":Ljava/util/Locale;
    move v0, v1

    goto :goto_46

    .line 97
    :cond_5f
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->serviceId:Ljava/lang/String;

    .line 98
    const-class v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v3, Ljava/util/Date;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->sessionStartTime:Ljava/util/Date;

    .line 99
    const-class v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v3, Ljava/util/Date;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->sessionEndTime:Ljava/util/Date;

    .line 100
    return-void

    .line 90
    .end local v1    # "localesCount":I
    .local v0, "localesCount":I
    :cond_86
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad locale length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    .end local v2    # "mapCount":I
    .local v0, "mapCount":I
    :cond_9f
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad map length"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor greylist-max-o <init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .registers 10
    .param p2, "newClassName"    # Ljava/lang/String;
    .param p4, "newServiceId"    # Ljava/lang/String;
    .param p5, "start"    # Ljava/util/Date;
    .param p6, "end"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 53
    .local p1, "newNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Locale;Ljava/lang/String;>;"
    .local p3, "newLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-eqz p1, :cond_83

    if-eqz p2, :cond_83

    if-eqz p3, :cond_83

    if-eqz p4, :cond_83

    if-eqz p5, :cond_83

    if-eqz p6, :cond_83

    .line 59
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_66

    .line 62
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_49

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    .line 67
    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 68
    iput-object p2, p0, Landroid/telephony/mbms/ServiceInfo;->className:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    .line 70
    iput-object p4, p0, Landroid/telephony/mbms/ServiceInfo;->serviceId:Ljava/lang/String;

    .line 71
    invoke-virtual {p5}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->sessionStartTime:Ljava/util/Date;

    .line 72
    invoke-virtual {p6}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->sessionEndTime:Ljava/util/Date;

    .line 73
    return-void

    .line 63
    :cond_49
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad locales length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_66
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad map length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad ServiceInfo construction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 185
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 186
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 187
    return v1

    .line 189
    :cond_8
    instance-of v2, p1, Landroid/telephony/mbms/ServiceInfo;

    if-nez v2, :cond_d

    .line 190
    return v1

    .line 192
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/telephony/mbms/ServiceInfo;

    .line 193
    .local v2, "that":Landroid/telephony/mbms/ServiceInfo;
    iget-object v3, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    iget-object v4, v2, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    iget-object v3, p0, Landroid/telephony/mbms/ServiceInfo;->className:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/mbms/ServiceInfo;->className:Ljava/lang/String;

    .line 194
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    iget-object v3, p0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    iget-object v4, v2, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    .line 195
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    iget-object v3, p0, Landroid/telephony/mbms/ServiceInfo;->serviceId:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/mbms/ServiceInfo;->serviceId:Ljava/lang/String;

    .line 196
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    iget-object v3, p0, Landroid/telephony/mbms/ServiceInfo;->sessionStartTime:Ljava/util/Date;

    iget-object v4, v2, Landroid/telephony/mbms/ServiceInfo;->sessionStartTime:Ljava/util/Date;

    .line 197
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    iget-object v3, p0, Landroid/telephony/mbms/ServiceInfo;->sessionEndTime:Ljava/util/Date;

    iget-object v4, v2, Landroid/telephony/mbms/ServiceInfo;->sessionEndTime:Ljava/util/Date;

    .line 198
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    goto :goto_4e

    :cond_4d
    move v0, v1

    .line 193
    :goto_4e
    return v0
.end method

.method public whitelist getLocales()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getNameForLocale(Ljava/util/Locale;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;

    .line 131
    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 134
    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0

    .line 132
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Locale not supported"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getNamedContentLocales()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getServiceClassName()Ljava/lang/String;
    .registers 2

    .line 152
    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getServiceId()Ljava/lang/String;
    .registers 2

    .line 166
    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->serviceId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSessionEndTime()Ljava/util/Date;
    .registers 2

    .line 180
    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->sessionEndTime:Ljava/util/Date;

    return-object v0
.end method

.method public whitelist getSessionStartTime()Ljava/util/Date;
    .registers 2

    .line 173
    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->sessionStartTime:Ljava/util/Date;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 203
    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    iget-object v1, p0, Landroid/telephony/mbms/ServiceInfo;->className:Ljava/lang/String;

    iget-object v2, p0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    iget-object v3, p0, Landroid/telephony/mbms/ServiceInfo;->serviceId:Ljava/lang/String;

    iget-object v4, p0, Landroid/telephony/mbms/ServiceInfo;->sessionStartTime:Ljava/util/Date;

    iget-object v5, p0, Landroid/telephony/mbms/ServiceInfo;->sessionEndTime:Ljava/util/Date;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 104
    iget-object v0, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 105
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Locale;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    .line 107
    .local v2, "l":Ljava/util/Locale;
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 108
    iget-object v3, p0, Landroid/telephony/mbms/ServiceInfo;->names:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    .end local v2    # "l":Ljava/util/Locale;
    goto :goto_11

    .line 110
    :cond_2c
    iget-object v1, p0, Landroid/telephony/mbms/ServiceInfo;->className:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 112
    .local v1, "localesCount":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object v2, p0, Landroid/telephony/mbms/ServiceInfo;->locales:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    .line 114
    .local v3, "l":Ljava/util/Locale;
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 115
    .end local v3    # "l":Ljava/util/Locale;
    goto :goto_40

    .line 116
    :cond_50
    iget-object v2, p0, Landroid/telephony/mbms/ServiceInfo;->serviceId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Landroid/telephony/mbms/ServiceInfo;->sessionStartTime:Ljava/util/Date;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 118
    iget-object v2, p0, Landroid/telephony/mbms/ServiceInfo;->sessionEndTime:Ljava/util/Date;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 119
    return-void
.end method
