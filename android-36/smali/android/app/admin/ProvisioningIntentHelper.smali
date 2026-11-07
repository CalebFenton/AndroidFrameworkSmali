.class final Landroid/app/admin/ProvisioningIntentHelper;
.super Ljava/lang/Object;
.source "ProvisioningIntentHelper.java"


# static fields
.field private static final blacklist EXTRAS_TO_CLASS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "ProvisioningIntentHelper"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 73
    invoke-static {}, Landroid/app/admin/ProvisioningIntentHelper;->createExtrasToClassMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/app/admin/ProvisioningIntentHelper;->EXTRAS_TO_CLASS_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist addPropertyToBundle(Ljava/lang/String;Ljava/util/Properties;Landroid/os/Bundle;)V
    .registers 6
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "properties"    # Ljava/util/Properties;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 147
    sget-object v0, Landroid/app/admin/ProvisioningIntentHelper;->EXTRAS_TO_CLASS_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Landroid/content/ComponentName;

    if-ne v0, v1, :cond_18

    .line 148
    nop

    .line 149
    invoke-virtual {p1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 150
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {p2, p0, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 151
    .end local v0    # "componentName":Landroid/content/ComponentName;
    goto/16 :goto_95

    :cond_18
    sget-object v0, Landroid/app/admin/ProvisioningIntentHelper;->EXTRAS_TO_CLASS_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Landroid/os/PersistableBundle;

    if-ne v0, v1, :cond_4b

    .line 153
    nop

    .line 154
    :try_start_23
    invoke-static {p1, p0}, Landroid/app/admin/ProvisioningIntentHelper;->deserializeExtrasBundle(Ljava/util/Properties;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 153
    invoke-virtual {p2, p0, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2a} :catch_2b

    goto :goto_4a

    .line 155
    :catch_2b
    move-exception v0

    .line 156
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProvisioningIntentHelper"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4a
    goto :goto_95

    .line 159
    :cond_4b
    sget-object v0, Landroid/app/admin/ProvisioningIntentHelper;->EXTRAS_TO_CLASS_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_62

    .line 160
    nop

    .line 161
    invoke-virtual {p1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 160
    invoke-virtual {p2, p0, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_95

    .line 162
    :cond_62
    sget-object v0, Landroid/app/admin/ProvisioningIntentHelper;->EXTRAS_TO_CLASS_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_78

    .line 163
    invoke-virtual {p1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_95

    .line 164
    :cond_78
    sget-object v0, Landroid/app/admin/ProvisioningIntentHelper;->EXTRAS_TO_CLASS_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_8e

    .line 165
    invoke-virtual {p1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, p0, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_95

    .line 168
    :cond_8e
    invoke-virtual {p1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :goto_95
    return-void
.end method

.method private static blacklist containsRequiredProvisioningExtras(Landroid/os/Bundle;)Z
    .registers 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 210
    const-string v0, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_NAME"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 211
    const-string v0, "android.app.extra.PROVISIONING_DEVICE_ADMIN_COMPONENT_NAME"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 210
    :goto_14
    return v0
.end method

.method private static blacklist createBundleFromProperties(Ljava/util/Properties;)Landroid/os/Bundle;
    .registers 4
    .param p0, "properties"    # Ljava/util/Properties;

    .line 135
    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 136
    .local v0, "propertyNames":Ljava/util/Enumeration;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v1, "bundle":Landroid/os/Bundle;
    :goto_9
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 139
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 140
    .local v2, "propertyName":Ljava/lang/String;
    invoke-static {v2, p0, v1}, Landroid/app/admin/ProvisioningIntentHelper;->addPropertyToBundle(Ljava/lang/String;Ljava/util/Properties;Landroid/os/Bundle;)V

    .line 141
    .end local v2    # "propertyName":Ljava/lang/String;
    goto :goto_9

    .line 142
    :cond_19
    return-object v1
.end method

.method private static blacklist createExtrasToClassMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 245
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class;>;"
    invoke-static {}, Landroid/app/admin/ProvisioningIntentHelper;->getBooleanExtras()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 246
    .local v2, "extra":Ljava/lang/String;
    const-class v3, Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .end local v2    # "extra":Ljava/lang/String;
    goto :goto_d

    .line 248
    :cond_1f
    invoke-static {}, Landroid/app/admin/ProvisioningIntentHelper;->getLongExtras()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 249
    .restart local v2    # "extra":Ljava/lang/String;
    const-class v3, Ljava/lang/Long;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .end local v2    # "extra":Ljava/lang/String;
    goto :goto_27

    .line 251
    :cond_39
    invoke-static {}, Landroid/app/admin/ProvisioningIntentHelper;->getIntExtras()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 252
    .restart local v2    # "extra":Ljava/lang/String;
    const-class v3, Ljava/lang/Integer;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .end local v2    # "extra":Ljava/lang/String;
    goto :goto_41

    .line 254
    :cond_53
    invoke-static {}, Landroid/app/admin/ProvisioningIntentHelper;->getComponentNameExtras()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 255
    .restart local v2    # "extra":Ljava/lang/String;
    const-class v3, Landroid/content/ComponentName;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .end local v2    # "extra":Ljava/lang/String;
    goto :goto_5b

    .line 257
    :cond_6d
    invoke-static {}, Landroid/app/admin/ProvisioningIntentHelper;->getPersistableBundleExtras()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_75
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_87

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 258
    .restart local v2    # "extra":Ljava/lang/String;
    const-class v3, Landroid/os/PersistableBundle;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .end local v2    # "extra":Ljava/lang/String;
    goto :goto_75

    .line 260
    :cond_87
    return-object v0
.end method

.method private static blacklist createProvisioningIntentFromBundle(Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 198
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.PROVISION_MANAGED_DEVICE_FROM_TRUSTED_SOURCE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, "provisioningIntent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 204
    const-string v1, "android.app.extra.PROVISIONING_TRIGGER"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    return-object v0
.end method

.method private static blacklist createProvisioningIntentFromNdefRecord(Landroid/nfc/NdefRecord;)Landroid/content/Intent;
    .registers 6
    .param p0, "firstRecord"    # Landroid/nfc/NdefRecord;

    .line 102
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/ProvisioningIntentHelper;->loadPropertiesFromPayload([B)Ljava/util/Properties;

    move-result-object v0

    .line 106
    .local v0, "properties":Ljava/util/Properties;
    const/4 v1, 0x0

    const-string v2, "ProvisioningIntentHelper"

    if-nez v0, :cond_16

    .line 107
    const-string v3, "Failed to load NdefRecord properties."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-object v1

    .line 111
    :cond_16
    invoke-static {v0}, Landroid/app/admin/ProvisioningIntentHelper;->createBundleFromProperties(Ljava/util/Properties;)Landroid/os/Bundle;

    move-result-object v3

    .line 113
    .local v3, "bundle":Landroid/os/Bundle;
    invoke-static {v3}, Landroid/app/admin/ProvisioningIntentHelper;->containsRequiredProvisioningExtras(Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 114
    const-string v4, "Bundle does not contain the required provisioning extras."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-object v1

    .line 118
    :cond_26
    invoke-static {v3}, Landroid/app/admin/ProvisioningIntentHelper;->createProvisioningIntentFromBundle(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist createProvisioningIntentFromNfcIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4
    .param p0, "nfcIntent"    # Landroid/content/Intent;

    .line 84
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v0, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2d

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong Nfc action: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ProvisioningIntentHelper"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-object v1

    .line 91
    :cond_2d
    invoke-static {p0}, Landroid/app/admin/ProvisioningIntentHelper;->getFirstNdefRecord(Landroid/content/Intent;)Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 93
    .local v0, "firstRecord":Landroid/nfc/NdefRecord;
    if-eqz v0, :cond_38

    .line 94
    invoke-static {v0}, Landroid/app/admin/ProvisioningIntentHelper;->createProvisioningIntentFromNdefRecord(Landroid/nfc/NdefRecord;)Landroid/content/Intent;

    move-result-object v1

    return-object v1

    .line 97
    :cond_38
    return-object v1
.end method

.method private static blacklist deserializeExtrasBundle(Ljava/util/Properties;Ljava/lang/String;)Landroid/os/PersistableBundle;
    .registers 9
    .param p0, "properties"    # Ljava/util/Properties;
    .param p1, "extraName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "serializedExtras":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 185
    const/4 v1, 0x0

    return-object v1

    .line 187
    :cond_8
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 188
    .local v1, "bundleProperties":Ljava/util/Properties;
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    .line 189
    new-instance v2, Landroid/os/PersistableBundle;

    invoke-virtual {v1}, Ljava/util/Properties;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/PersistableBundle;-><init>(I)V

    .line 190
    .local v2, "extrasBundle":Landroid/os/PersistableBundle;
    invoke-virtual {v1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v3

    .line 191
    .local v3, "propertyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 192
    .local v5, "propertyName":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .end local v5    # "propertyName":Ljava/lang/String;
    goto :goto_26

    .line 194
    :cond_3a
    return-object v2
.end method

.method private static blacklist getBooleanExtras()Ljava/util/Set;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 285
    const-string v10, "android.app.extra.PROVISIONING_RETURN_BEFORE_POLICY_COMPLIANCE"

    const-string v11, "android.app.extra.PROVISIONING_KEEP_SCREEN_ON"

    const-string v0, "android.app.extra.PROVISIONING_ALLOW_OFFLINE"

    const-string v1, "android.app.extra.PROVISIONING_SHOULD_LAUNCH_RESULT_INTENT"

    const-string v2, "android.app.extra.PROVISIONING_KEEP_ACCOUNT_ON_MIGRATION"

    const-string v3, "android.app.extra.PROVISIONING_LEAVE_ALL_SYSTEM_APPS_ENABLED"

    const-string v4, "android.app.extra.PROVISIONING_WIFI_HIDDEN"

    const-string v5, "android.app.extra.PROVISIONING_SENSORS_PERMISSION_GRANT_OPT_OUT"

    const-string v6, "android.app.extra.PROVISIONING_SKIP_ENCRYPTION"

    const-string v7, "android.app.extra.PROVISIONING_SKIP_EDUCATION_SCREENS"

    const-string v8, "android.app.extra.PROVISIONING_USE_MOBILE_DATA"

    const-string v9, "android.app.extra.PROVISIONING_SKIP_OWNERSHIP_DISCLAIMER"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getComponentNameExtras()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 270
    const-string v0, "android.app.extra.PROVISIONING_DEVICE_ADMIN_COMPONENT_NAME"

    invoke-static {v0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getFirstNdefRecord(Landroid/content/Intent;)Landroid/nfc/NdefRecord;
    .registers 13
    .param p0, "nfcIntent"    # Landroid/content/Intent;

    .line 218
    const-string v0, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 219
    .local v0, "ndefMessages":[Landroid/os/Parcelable;
    const/4 v1, 0x0

    const-string v2, "ProvisioningIntentHelper"

    if-nez v0, :cond_11

    .line 220
    const-string v3, "No EXTRA_NDEF_MESSAGES from nfcIntent"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-object v1

    .line 224
    :cond_11
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_14
    if-ge v5, v3, :cond_3b

    aget-object v6, v0, v5

    .line 225
    .local v6, "rawMsg":Landroid/os/Parcelable;
    move-object v7, v6

    check-cast v7, Landroid/nfc/NdefMessage;

    .line 226
    .local v7, "msg":Landroid/nfc/NdefMessage;
    invoke-virtual {v7}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v8

    array-length v9, v8

    if-lez v9, :cond_38

    aget-object v8, v8, v4

    .line 227
    .local v8, "record":Landroid/nfc/NdefRecord;
    new-instance v9, Ljava/lang/String;

    invoke-virtual {v8}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v10

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 230
    .local v9, "mimeType":Ljava/lang/String;
    const-string v10, "application/com.android.managedprovisioning"

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_38

    .line 231
    return-object v8

    .line 224
    .end local v6    # "rawMsg":Landroid/os/Parcelable;
    .end local v7    # "msg":Landroid/nfc/NdefMessage;
    .end local v8    # "record":Landroid/nfc/NdefRecord;
    .end local v9    # "mimeType":Ljava/lang/String;
    :cond_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 239
    :cond_3b
    const-string v3, "No compatible records found on nfcIntent"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-object v1
.end method

.method private static blacklist getIntExtras()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 274
    const-string v0, "android.app.extra.PROVISIONING_DEVICE_ADMIN_MINIMUM_VERSION_CODE"

    const-string v1, "android.app.extra.PROVISIONING_SUPPORTED_MODES"

    const-string v2, "android.app.extra.PROVISIONING_WIFI_PROXY_PORT"

    invoke-static {v2, v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getLongExtras()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 281
    const-string v0, "android.app.extra.PROVISIONING_LOCAL_TIME"

    invoke-static {v0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getPersistableBundleExtras()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 264
    const-string v0, "android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE"

    const-string v1, "android.app.extra.PROVISIONING_ROLE_HOLDER_EXTRAS_BUNDLE"

    invoke-static {v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist loadPropertiesFromPayload([B)Ljava/util/Properties;
    .registers 5
    .param p0, "payload"    # [B

    .line 122
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 125
    .local v0, "properties":Ljava/util/Properties;
    :try_start_5
    new-instance v1, Ljava/io/StringReader;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_14} :catch_16

    .line 129
    nop

    .line 131
    return-object v0

    .line 126
    :catch_16
    move-exception v1

    .line 127
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "ProvisioningIntentHelper"

    const-string v3, "NFC Intent properties loading failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v2, 0x0

    return-object v2
.end method
