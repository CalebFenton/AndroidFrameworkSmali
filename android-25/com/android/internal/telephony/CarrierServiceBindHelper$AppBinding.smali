.class Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
.super Ljava/lang/Object;
.source "CarrierServiceBindHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServiceBindHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppBinding"
.end annotation


# instance fields
.field private bindCount:I

.field private carrierPackage:Ljava/lang/String;

.field private carrierServiceClass:Ljava/lang/String;

.field private connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

.field private lastBindStartMillis:J

.field private lastUnbindMillis:J

.field private phoneId:I

.field final synthetic this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

.field private unbindCount:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/CarrierServiceBindHelper;
    .param p2, "phoneId"    # I

    #@0
    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 134
    iput p2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    #@7
    .line 133
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Carrier app binding for phone "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v1, "  connection: "

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@32
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v1, "  bindCount: "

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    iget v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->bindCount:I

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4b
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v1, "  lastBindStartMillis: "

    #@53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    iget-wide v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->lastBindStartMillis:J

    #@59
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v0

    #@61
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@64
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v1, "  unbindCount: "

    #@6c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v0

    #@70
    iget v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbindCount:I

    #@72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75
    move-result-object v0

    #@76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v0

    #@7a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7d
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v1, "  lastUnbindMillis: "

    #@85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v0

    #@89
    iget-wide v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->lastUnbindMillis:J

    #@8b
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v0

    #@8f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v0

    #@93
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@96
    .line 256
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@99
    .line 249
    return-void
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    #@0
    .prologue
    .line 138
    iget v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    #@2
    return v0
.end method

.method rebind()V
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    const/4 v11, 0x0

    #@2
    .line 155
    iget-object v8, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@4
    invoke-static {v8}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-get1(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;

    #@7
    move-result-object v8

    #@8
    invoke-static {v8}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@b
    move-result-object v8

    #@c
    .line 156
    new-instance v9, Landroid/content/Intent;

    #@e
    const-string/jumbo v10, "android.service.carrier.CarrierService"

    #@11
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@14
    iget v10, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    #@16
    .line 155
    invoke-virtual {v8, v9, v10}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    #@19
    move-result-object v2

    #@1a
    .line 159
    .local v2, "carrierPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    #@1c
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@1f
    move-result v8

    #@20
    if-gtz v8, :cond_1

    #@22
    .line 160
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v9, "No carrier app for: "

    #@2a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v8

    #@2e
    iget v9, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    #@30
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v8

    #@34
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v8

    #@38
    invoke-static {v8}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    #@3b
    .line 161
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind()V

    #@3e
    .line 162
    return-void

    #@3f
    .line 165
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v9, "Found carrier app: "

    #@47
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v8

    #@4b
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v8

    #@4f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v8

    #@53
    invoke-static {v8}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    #@56
    .line 166
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@59
    move-result-object v0

    #@5a
    check-cast v0, Ljava/lang/String;

    #@5c
    .line 168
    .local v0, "candidateCarrierPackage":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    #@5e
    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@61
    move-result v8

    #@62
    if-nez v8, :cond_2

    #@64
    .line 169
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind()V

    #@67
    .line 173
    :cond_2
    new-instance v4, Landroid/content/Intent;

    #@69
    const-string/jumbo v8, "android.service.carrier.CarrierService"

    #@6c
    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@6f
    .line 174
    .local v4, "carrierService":Landroid/content/Intent;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@72
    .line 176
    iget-object v8, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@74
    invoke-static {v8}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-get1(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;

    #@77
    move-result-object v8

    #@78
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7b
    move-result-object v8

    #@7c
    .line 177
    const/16 v9, 0x80

    #@7e
    .line 176
    invoke-virtual {v8, v4, v9}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    #@81
    move-result-object v3

    #@82
    .line 178
    .local v3, "carrierResolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v7, 0x0

    #@83
    .line 179
    .local v7, "metadata":Landroid/os/Bundle;
    const/4 v1, 0x0

    #@84
    .line 180
    .local v1, "candidateServiceClass":Ljava/lang/String;
    if-eqz v3, :cond_3

    #@86
    .line 181
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@88
    iget-object v7, v8, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    #@8a
    .line 183
    .local v7, "metadata":Landroid/os/Bundle;
    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    #@8d
    move-result-object v8

    #@8e
    invoke-virtual {v8}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    #@91
    move-result-object v8

    #@92
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@95
    move-result-object v1

    #@96
    .line 187
    .end local v1    # "candidateServiceClass":Ljava/lang/String;
    .end local v7    # "metadata":Landroid/os/Bundle;
    :cond_3
    if-eqz v7, :cond_5

    #@98
    .line 188
    const-string/jumbo v8, "android.service.carrier.LONG_LIVED_BINDING"

    #@9b
    invoke-virtual {v7, v8, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@9e
    move-result v8

    #@9f
    if-eqz v8, :cond_5

    #@a1
    .line 194
    iget-object v8, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierServiceClass:Ljava/lang/String;

    #@a3
    invoke-static {v8, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@a6
    move-result v8

    #@a7
    if-nez v8, :cond_6

    #@a9
    .line 196
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind()V

    #@ac
    .line 202
    :cond_4
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    #@ae
    .line 203
    iput-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierServiceClass:Ljava/lang/String;

    #@b0
    .line 205
    new-instance v8, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v9, "Binding to "

    #@b8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v8

    #@bc
    iget-object v9, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    #@be
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v8

    #@c2
    const-string/jumbo v9, " for phone "

    #@c5
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v8

    #@c9
    iget v9, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    #@cb
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v8

    #@cf
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v8

    #@d3
    invoke-static {v8}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    #@d6
    .line 208
    iget v8, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->bindCount:I

    #@d8
    add-int/lit8 v8, v8, 0x1

    #@da
    iput v8, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->bindCount:I

    #@dc
    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@df
    move-result-wide v8

    #@e0
    iput-wide v8, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->lastBindStartMillis:J

    #@e2
    .line 211
    new-instance v8, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    #@e4
    iget-object v9, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@e6
    invoke-direct {v8, v9, v11}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;)V

    #@e9
    iput-object v8, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    #@eb
    .line 215
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@ed
    invoke-static {v8}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-get1(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;

    #@f0
    move-result-object v8

    #@f1
    iget-object v9, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    #@f3
    const v10, 0x4000001

    #@f6
    invoke-virtual {v8, v4, v9, v10}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@f9
    move-result v8

    #@fa
    if-eqz v8, :cond_7

    #@fc
    .line 217
    return-void

    #@fd
    .line 189
    :cond_5
    const-string/jumbo v8, "Carrier app does not want a long lived binding"

    #@100
    invoke-static {v8}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    #@103
    .line 190
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind()V

    #@106
    .line 191
    return-void

    #@107
    .line 197
    :cond_6
    iget-object v8, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    #@109
    if-eqz v8, :cond_4

    #@10b
    .line 199
    return-void

    #@10c
    .line 220
    :cond_7
    :try_start_1
    const-string/jumbo v5, "bindService returned false"
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    #@10f
    .line 225
    .local v5, "error":Ljava/lang/String;
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    #@111
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@114
    const-string/jumbo v9, "Unable to bind to "

    #@117
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v8

    #@11b
    iget-object v9, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    #@11d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v8

    #@121
    const-string/jumbo v9, " for phone "

    #@124
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v8

    #@128
    iget v9, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    #@12a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v8

    #@12e
    .line 226
    const-string/jumbo v9, ". Error: "

    #@131
    .line 225
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v8

    #@135
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v8

    #@139
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13c
    move-result-object v8

    #@13d
    invoke-static {v8}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    #@140
    .line 227
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind()V

    #@143
    .line 152
    return-void

    #@144
    .line 221
    .end local v5    # "error":Ljava/lang/String;
    :catch_0
    move-exception v6

    #@145
    .line 222
    .local v6, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v6}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    #@148
    move-result-object v5

    #@149
    .restart local v5    # "error":Ljava/lang/String;
    goto :goto_0
.end method

.method unbind()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 232
    return-void

    #@6
    .line 236
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbindCount:I

    #@8
    add-int/lit8 v0, v0, 0x1

    #@a
    iput v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbindCount:I

    #@c
    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@f
    move-result-wide v0

    #@10
    iput-wide v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->lastUnbindMillis:J

    #@12
    .line 240
    iput-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    #@14
    .line 241
    iput-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierServiceClass:Ljava/lang/String;

    #@16
    .line 244
    const-string/jumbo v0, "Unbinding from carrier app"

    #@19
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    #@1c
    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@1e
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-get1(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;

    #@21
    move-result-object v0

    #@22
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    #@24
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@27
    .line 246
    iput-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    #@29
    .line 230
    return-void
.end method
