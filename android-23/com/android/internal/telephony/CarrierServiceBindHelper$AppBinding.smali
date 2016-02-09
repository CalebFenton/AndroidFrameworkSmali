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
    .line 146
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 147
    iput p2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    #@7
    .line 146
    return-void
.end method


# virtual methods
.method public bind()Z
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 164
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind()V

    #@5
    .line 168
    iget-object v6, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@7
    invoke-static {v6}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-get1(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;

    #@a
    move-result-object v6

    #@b
    invoke-static {v6}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@e
    move-result-object v6

    #@f
    .line 169
    new-instance v7, Landroid/content/Intent;

    #@11
    const-string/jumbo v8, "android.service.carrier.CarrierService"

    #@14
    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@17
    iget v8, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    #@19
    .line 168
    invoke-virtual {v6, v7, v8}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    #@1c
    move-result-object v0

    #@1d
    .line 172
    .local v0, "carrierPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    #@1f
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@22
    move-result v6

    #@23
    if-gtz v6, :cond_1

    #@25
    .line 173
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v7, "No carrier app for: "

    #@2d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v6

    #@31
    iget v7, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    #@33
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v6

    #@37
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v6

    #@3b
    invoke-static {v6}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    #@3e
    .line 174
    return v10

    #@3f
    .line 177
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v7, "Found carrier app: "

    #@47
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v6

    #@4b
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v6

    #@4f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v6

    #@53
    invoke-static {v6}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    #@56
    .line 178
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@59
    move-result-object v6

    #@5a
    check-cast v6, Ljava/lang/String;

    #@5c
    iput-object v6, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    #@5e
    .line 181
    iget v6, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->bindCount:I

    #@60
    add-int/lit8 v6, v6, 0x1

    #@62
    iput v6, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->bindCount:I

    #@64
    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@67
    move-result-wide v6

    #@68
    iput-wide v6, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->lastBindStartMillis:J

    #@6a
    .line 185
    new-instance v2, Landroid/content/Intent;

    #@6c
    const-string/jumbo v6, "android.service.carrier.CarrierService"

    #@6f
    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@72
    .line 186
    .local v2, "carrierService":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    #@74
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@77
    .line 188
    iget-object v6, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@79
    invoke-static {v6}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-get1(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;

    #@7c
    move-result-object v6

    #@7d
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@80
    move-result-object v6

    #@81
    .line 189
    const/16 v7, 0x80

    #@83
    .line 188
    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    #@86
    move-result-object v1

    #@87
    .line 190
    .local v1, "carrierResolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@89
    iget-object v5, v6, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    #@8b
    .line 193
    .local v5, "metadata":Landroid/os/Bundle;
    if-eqz v5, :cond_2

    #@8d
    .line 194
    const-string/jumbo v6, "android.service.carrier.LONG_LIVED_BINDING"

    #@90
    invoke-virtual {v5, v6, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@93
    move-result v6

    #@94
    if-eqz v6, :cond_2

    #@96
    .line 199
    new-instance v6, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v7, "Binding to "

    #@9e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v6

    #@a2
    iget-object v7, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    #@a4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v6

    #@a8
    const-string/jumbo v7, " for phone "

    #@ab
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v6

    #@af
    iget v7, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    #@b1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v6

    #@b5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v6

    #@b9
    invoke-static {v6}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    #@bc
    .line 200
    new-instance v6, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    #@be
    iget-object v7, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@c0
    invoke-direct {v6, v7, p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;)V

    #@c3
    iput-object v6, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    #@c5
    .line 201
    iget-object v6, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@c7
    invoke-static {v6}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-get2(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/os/Handler;

    #@ca
    move-result-object v6

    #@cb
    .line 202
    iget-object v7, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@cd
    invoke-static {v7}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-get2(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/os/Handler;

    #@d0
    move-result-object v7

    #@d1
    const/4 v8, 0x2

    #@d2
    invoke-virtual {v7, v8, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@d5
    move-result-object v7

    #@d6
    .line 203
    const-wide/16 v8, 0x2710

    #@d8
    .line 201
    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@db
    .line 207
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@dd
    invoke-static {v6}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-get1(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;

    #@e0
    move-result-object v6

    #@e1
    iget-object v7, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    #@e3
    const/4 v8, 0x1

    #@e4
    invoke-virtual {v6, v2, v7, v8}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@e7
    move-result v6

    #@e8
    if-eqz v6, :cond_3

    #@ea
    .line 208
    return v11

    #@eb
    .line 195
    :cond_2
    const-string/jumbo v6, "Carrier app does not want a long lived binding"

    #@ee
    invoke-static {v6}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    #@f1
    .line 196
    return v10

    #@f2
    .line 211
    :cond_3
    :try_start_1
    const-string/jumbo v3, "bindService returned false"
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    #@f5
    .line 216
    .local v3, "error":Ljava/lang/String;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    #@f7
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@fa
    const-string/jumbo v7, "Unable to bind to "

    #@fd
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v6

    #@101
    iget-object v7, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    #@103
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v6

    #@107
    const-string/jumbo v7, " for phone "

    #@10a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v6

    #@10e
    iget v7, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    #@110
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@113
    move-result-object v6

    #@114
    .line 217
    const-string/jumbo v7, ". Error: "

    #@117
    .line 216
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v6

    #@11b
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v6

    #@11f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@122
    move-result-object v6

    #@123
    invoke-static {v6}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    #@126
    .line 218
    return v10

    #@127
    .line 212
    .end local v3    # "error":Ljava/lang/String;
    :catch_0
    move-exception v4

    #@128
    .line 213
    .local v4, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v4}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    #@12b
    move-result-object v3

    #@12c
    .restart local v3    # "error":Ljava/lang/String;
    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 238
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
    .line 239
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
    .line 240
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
    .line 241
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
    .line 242
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
    .line 243
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
    .line 244
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@99
    .line 237
    return-void
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    #@0
    .prologue
    .line 151
    iget v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    #@2
    return v0
.end method

.method public handleConnectionDown()V
    .locals 1

    #@0
    .prologue
    .line 159
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    #@3
    .line 158
    return-void
.end method

.method public unbind()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-get2(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/os/Handler;

    #@6
    move-result-object v0

    #@7
    const/4 v1, 0x2

    #@8
    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    #@b
    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    #@d
    if-nez v0, :cond_0

    #@f
    .line 224
    return-void

    #@10
    .line 228
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbindCount:I

    #@12
    add-int/lit8 v0, v0, 0x1

    #@14
    iput v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbindCount:I

    #@16
    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@19
    move-result-wide v0

    #@1a
    iput-wide v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->lastUnbindMillis:J

    #@1c
    .line 232
    const-string/jumbo v0, "Unbinding from carrier app"

    #@1f
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    #@22
    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@24
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-get1(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;

    #@27
    move-result-object v0

    #@28
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    #@2a
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@2d
    .line 234
    iput-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    #@2f
    .line 221
    return-void
.end method
