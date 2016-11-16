.class final Landroid/widget/RemoteViews$ReflectionAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReflectionAction"
.end annotation


# static fields
.field static final BITMAP:I = 0xc

.field static final BOOLEAN:I = 0x1

.field static final BUNDLE:I = 0xd

.field static final BYTE:I = 0x2

.field static final CHAR:I = 0x8

.field static final CHAR_SEQUENCE:I = 0xa

.field static final COLOR_STATE_LIST:I = 0xf

.field static final DOUBLE:I = 0x7

.field static final FLOAT:I = 0x6

.field static final ICON:I = 0x10

.field static final INT:I = 0x4

.field static final INTENT:I = 0xe

.field static final LONG:I = 0x5

.field static final SHORT:I = 0x3

.field static final STRING:I = 0x9

.field static final TAG:I = 0x2

.field static final URI:I = 0xb


# instance fields
.field methodName:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field type:I

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "viewId"    # I
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1196
    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->this$0:Landroid/widget/RemoteViews;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@6
    .line 1197
    iput p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->viewId:I

    #@8
    .line 1198
    iput-object p3, p0, Landroid/widget/RemoteViews$ReflectionAction;->methodName:Ljava/lang/String;

    #@a
    .line 1199
    iput p4, p0, Landroid/widget/RemoteViews$ReflectionAction;->type:I

    #@c
    .line 1200
    iput-object p5, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@e
    .line 1196
    return-void
.end method

.method constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1203
    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->this$0:Landroid/widget/RemoteViews;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@7
    .line 1204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a
    move-result v1

    #@b
    iput v1, p0, Landroid/widget/RemoteViews$ReflectionAction;->viewId:I

    #@d
    .line 1205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    iput-object v1, p0, Landroid/widget/RemoteViews$ReflectionAction;->methodName:Ljava/lang/String;

    #@13
    .line 1206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v1

    #@17
    iput v1, p0, Landroid/widget/RemoteViews$ReflectionAction;->type:I

    #@19
    .line 1215
    iget v1, p0, Landroid/widget/RemoteViews$ReflectionAction;->type:I

    #@1b
    packed-switch v1, :pswitch_data_0

    #@1e
    .line 1203
    :cond_0
    :goto_0
    return-void

    #@1f
    .line 1217
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_1

    #@25
    const/4 v0, 0x1

    #@26
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@29
    move-result-object v0

    #@2a
    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@2c
    goto :goto_0

    #@2d
    .line 1220
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    #@30
    move-result v0

    #@31
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@34
    move-result-object v0

    #@35
    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@37
    goto :goto_0

    #@38
    .line 1223
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v0

    #@3c
    int-to-short v0, v0

    #@3d
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@40
    move-result-object v0

    #@41
    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@43
    goto :goto_0

    #@44
    .line 1226
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v0

    #@48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4b
    move-result-object v0

    #@4c
    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@4e
    goto :goto_0

    #@4f
    .line 1229
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@52
    move-result-wide v0

    #@53
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@56
    move-result-object v0

    #@57
    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@59
    goto :goto_0

    #@5a
    .line 1232
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@5d
    move-result v0

    #@5e
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@61
    move-result-object v0

    #@62
    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@64
    goto :goto_0

    #@65
    .line 1235
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    #@68
    move-result-wide v0

    #@69
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@6c
    move-result-object v0

    #@6d
    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@6f
    goto :goto_0

    #@70
    .line 1238
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@73
    move-result v0

    #@74
    int-to-char v0, v0

    #@75
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@78
    move-result-object v0

    #@79
    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@7b
    goto :goto_0

    #@7c
    .line 1241
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7f
    move-result-object v0

    #@80
    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@82
    goto :goto_0

    #@83
    .line 1244
    :pswitch_9
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@85
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@88
    move-result-object v0

    #@89
    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@8b
    goto :goto_0

    #@8c
    .line 1247
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@8f
    move-result v0

    #@90
    if-eqz v0, :cond_0

    #@92
    .line 1248
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@94
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@97
    move-result-object v0

    #@98
    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@9a
    goto :goto_0

    #@9b
    .line 1252
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9e
    move-result v0

    #@9f
    if-eqz v0, :cond_0

    #@a1
    .line 1253
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a3
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a6
    move-result-object v0

    #@a7
    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@a9
    goto/16 :goto_0

    #@ab
    .line 1257
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@ae
    move-result-object v0

    #@af
    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@b1
    goto/16 :goto_0

    #@b3
    .line 1260
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b6
    move-result v0

    #@b7
    if-eqz v0, :cond_0

    #@b9
    .line 1261
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@bb
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@be
    move-result-object v0

    #@bf
    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@c1
    goto/16 :goto_0

    #@c3
    .line 1265
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c6
    move-result v0

    #@c7
    if-eqz v0, :cond_0

    #@c9
    .line 1266
    sget-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    #@cb
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ce
    move-result-object v0

    #@cf
    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@d1
    goto/16 :goto_0

    #@d3
    .line 1270
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@d6
    move-result v0

    #@d7
    if-eqz v0, :cond_0

    #@d9
    .line 1271
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    #@db
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@de
    move-result-object v0

    #@df
    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@e1
    goto/16 :goto_0

    #@e3
    .line 1215
    nop

    #@e4
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private getParameterType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1361
    iget v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->type:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1395
    const/4 v0, 0x0

    #@6
    return-object v0

    #@7
    .line 1363
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@9
    return-object v0

    #@a
    .line 1365
    :pswitch_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@c
    return-object v0

    #@d
    .line 1367
    :pswitch_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@f
    return-object v0

    #@10
    .line 1369
    :pswitch_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@12
    return-object v0

    #@13
    .line 1371
    :pswitch_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@15
    return-object v0

    #@16
    .line 1373
    :pswitch_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@18
    return-object v0

    #@19
    .line 1375
    :pswitch_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@1b
    return-object v0

    #@1c
    .line 1377
    :pswitch_7
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@1e
    return-object v0

    #@1f
    .line 1379
    :pswitch_8
    const-class v0, Ljava/lang/String;

    #@21
    return-object v0

    #@22
    .line 1381
    :pswitch_9
    const-class v0, Ljava/lang/CharSequence;

    #@24
    return-object v0

    #@25
    .line 1383
    :pswitch_a
    const-class v0, Landroid/net/Uri;

    #@27
    return-object v0

    #@28
    .line 1385
    :pswitch_b
    const-class v0, Landroid/graphics/Bitmap;

    #@2a
    return-object v0

    #@2b
    .line 1387
    :pswitch_c
    const-class v0, Landroid/os/Bundle;

    #@2d
    return-object v0

    #@2e
    .line 1389
    :pswitch_d
    const-class v0, Landroid/content/Intent;

    #@30
    return-object v0

    #@31
    .line 1391
    :pswitch_e
    const-class v0, Landroid/content/res/ColorStateList;

    #@33
    return-object v0

    #@34
    .line 1393
    :pswitch_f
    const-class v0, Landroid/graphics/drawable/Icon;

    #@36
    return-object v0

    #@37
    .line 1361
    nop

    #@38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    .line 1401
    iget v4, p0, Landroid/widget/RemoteViews$ReflectionAction;->viewId:I

    #@2
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@5
    move-result-object v3

    #@6
    .line 1402
    .local v3, "view":Landroid/view/View;
    if-nez v3, :cond_0

    #@8
    return-void

    #@9
    .line 1404
    :cond_0
    invoke-direct {p0}, Landroid/widget/RemoteViews$ReflectionAction;->getParameterType()Ljava/lang/Class;

    #@c
    move-result-object v2

    #@d
    .line 1405
    .local v2, "param":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v2, :cond_1

    #@f
    .line 1406
    new-instance v4, Landroid/widget/RemoteViews$ActionException;

    #@11
    new-instance v5, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v6, "bad type: "

    #@19
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v5

    #@1d
    iget v6, p0, Landroid/widget/RemoteViews$ReflectionAction;->type:I

    #@1f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    invoke-direct {v4, v5}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v4

    #@2b
    .line 1410
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/widget/RemoteViews$ReflectionAction;->this$0:Landroid/widget/RemoteViews;

    #@2d
    iget-object v5, p0, Landroid/widget/RemoteViews$ReflectionAction;->methodName:Ljava/lang/String;

    #@2f
    invoke-static {v4, v3, v5, v2}, Landroid/widget/RemoteViews;->-wrap5(Landroid/widget/RemoteViews;Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@32
    move-result-object v4

    #@33
    iget-object v5, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@35
    invoke-static {v5}, Landroid/widget/RemoteViews;->-wrap3(Ljava/lang/Object;)[Ljava/lang/Object;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    .line 1400
    return-void

    #@3d
    .line 1413
    :catch_0
    move-exception v1

    #@3e
    .line 1414
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v4, Landroid/widget/RemoteViews$ActionException;

    #@40
    invoke-direct {v4, v1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Exception;)V

    #@43
    throw v4

    #@44
    .line 1411
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@45
    .line 1412
    .local v0, "e":Landroid/widget/RemoteViews$ActionException;
    throw v0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1461
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ReflectionAction"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/widget/RemoteViews$ReflectionAction;->methodName:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget v1, p0, Landroid/widget/RemoteViews$ReflectionAction;->type:I

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method public initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$Action;
    .locals 10
    .param p1, "root"    # Landroid/widget/RemoteViews$ViewTree;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    .line 1420
    iget v7, p0, Landroid/widget/RemoteViews$ReflectionAction;->viewId:I

    #@2
    invoke-virtual {p1, v7}, Landroid/widget/RemoteViews$ViewTree;->findViewById(I)Landroid/view/View;

    #@5
    move-result-object v6

    #@6
    .line 1421
    .local v6, "view":Landroid/view/View;
    if-nez v6, :cond_0

    #@8
    invoke-static {}, Landroid/widget/RemoteViews;->-get0()Landroid/widget/RemoteViews$Action;

    #@b
    move-result-object v7

    #@c
    return-object v7

    #@d
    .line 1423
    :cond_0
    invoke-direct {p0}, Landroid/widget/RemoteViews$ReflectionAction;->getParameterType()Ljava/lang/Class;

    #@10
    move-result-object v5

    #@11
    .line 1424
    .local v5, "param":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v5, :cond_1

    #@13
    .line 1425
    new-instance v7, Landroid/widget/RemoteViews$ActionException;

    #@15
    new-instance v8, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v9, "bad type: "

    #@1d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v8

    #@21
    iget v9, p0, Landroid/widget/RemoteViews$ReflectionAction;->type:I

    #@23
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v8

    #@27
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v8

    #@2b
    invoke-direct {v7, v8}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v7

    #@2f
    .line 1429
    :cond_1
    :try_start_0
    iget-object v7, p0, Landroid/widget/RemoteViews$ReflectionAction;->this$0:Landroid/widget/RemoteViews;

    #@31
    iget-object v8, p0, Landroid/widget/RemoteViews$ReflectionAction;->methodName:Ljava/lang/String;

    #@33
    invoke-static {v7, v6, v8, v5}, Landroid/widget/RemoteViews;->-wrap5(Landroid/widget/RemoteViews;Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@36
    move-result-object v4

    #@37
    .line 1430
    .local v4, "method":Ljava/lang/reflect/Method;
    iget-object v7, p0, Landroid/widget/RemoteViews$ReflectionAction;->this$0:Landroid/widget/RemoteViews;

    #@39
    invoke-static {v7, v4}, Landroid/widget/RemoteViews;->-wrap4(Landroid/widget/RemoteViews;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    #@3c
    move-result-object v0

    #@3d
    .line 1432
    .local v0, "asyncMethod":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_3

    #@3f
    .line 1433
    iget-object v7, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@41
    invoke-static {v7}, Landroid/widget/RemoteViews;->-wrap3(Ljava/lang/Object;)[Ljava/lang/Object;

    #@44
    move-result-object v7

    #@45
    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    move-result-object v2

    #@49
    check-cast v2, Ljava/lang/Runnable;

    #@4b
    .line 1434
    .local v2, "endAction":Ljava/lang/Runnable;
    if-nez v2, :cond_2

    #@4d
    .line 1435
    invoke-static {}, Landroid/widget/RemoteViews;->-get0()Landroid/widget/RemoteViews$Action;

    #@50
    move-result-object v7

    #@51
    return-object v7

    #@52
    .line 1437
    :cond_2
    new-instance v7, Landroid/widget/RemoteViews$RunnableAction;

    #@54
    invoke-direct {v7, v2}, Landroid/widget/RemoteViews$RunnableAction;-><init>(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@57
    return-object v7

    #@58
    .line 1442
    .end local v0    # "asyncMethod":Ljava/lang/reflect/Method;
    .end local v2    # "endAction":Ljava/lang/Runnable;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    #@59
    .line 1443
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v7, Landroid/widget/RemoteViews$ActionException;

    #@5b
    invoke-direct {v7, v3}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Exception;)V

    #@5e
    throw v7

    #@5f
    .line 1440
    .end local v3    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@60
    .line 1441
    .local v1, "e":Landroid/widget/RemoteViews$ActionException;
    throw v1

    #@61
    .line 1446
    .end local v1    # "e":Landroid/widget/RemoteViews$ActionException;
    .restart local v0    # "asyncMethod":Ljava/lang/reflect/Method;
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    :cond_3
    return-object p0
.end method

.method public mergeBehavior()I
    .locals 2

    #@0
    .prologue
    .line 1451
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->methodName:Ljava/lang/String;

    #@2
    const-string/jumbo v1, "smoothScrollBy"

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1452
    const/4 v0, 0x1

    #@c
    return v0

    #@d
    .line 1454
    :cond_0
    const/4 v0, 0x0

    #@e
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1279
    const/4 v0, 0x2

    #@3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 1280
    iget v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->viewId:I

    #@8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 1281
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->methodName:Ljava/lang/String;

    #@d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 1282
    iget v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->type:I

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1291
    iget v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->type:I

    #@17
    packed-switch v0, :pswitch_data_0

    #@1a
    .line 1278
    :cond_0
    :goto_0
    return-void

    #@1b
    .line 1293
    :pswitch_0
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@1d
    check-cast v0, Ljava/lang/Boolean;

    #@1f
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_1

    #@25
    move v0, v1

    #@26
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    goto :goto_0

    #@2a
    :cond_1
    move v0, v2

    #@2b
    goto :goto_1

    #@2c
    .line 1296
    :pswitch_1
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@2e
    check-cast v0, Ljava/lang/Byte;

    #@30
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    #@33
    move-result v0

    #@34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@37
    goto :goto_0

    #@38
    .line 1299
    :pswitch_2
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@3a
    check-cast v0, Ljava/lang/Short;

    #@3c
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    #@3f
    move-result v0

    #@40
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@43
    goto :goto_0

    #@44
    .line 1302
    :pswitch_3
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@46
    check-cast v0, Ljava/lang/Integer;

    #@48
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@4b
    move-result v0

    #@4c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4f
    goto :goto_0

    #@50
    .line 1305
    :pswitch_4
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@52
    check-cast v0, Ljava/lang/Long;

    #@54
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@57
    move-result-wide v0

    #@58
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5b
    goto :goto_0

    #@5c
    .line 1308
    :pswitch_5
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@5e
    check-cast v0, Ljava/lang/Float;

    #@60
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    #@63
    move-result v0

    #@64
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@67
    goto :goto_0

    #@68
    .line 1311
    :pswitch_6
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@6a
    check-cast v0, Ljava/lang/Double;

    #@6c
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    #@6f
    move-result-wide v0

    #@70
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@73
    goto :goto_0

    #@74
    .line 1314
    :pswitch_7
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@76
    check-cast v0, Ljava/lang/Character;

    #@78
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    #@7b
    move-result v0

    #@7c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7f
    goto :goto_0

    #@80
    .line 1317
    :pswitch_8
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@82
    check-cast v0, Ljava/lang/String;

    #@84
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@87
    goto :goto_0

    #@88
    .line 1320
    :pswitch_9
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@8a
    check-cast v0, Ljava/lang/CharSequence;

    #@8c
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@8f
    goto :goto_0

    #@90
    .line 1323
    :pswitch_a
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@92
    if-eqz v0, :cond_2

    #@94
    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@97
    .line 1324
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@99
    if-eqz v0, :cond_0

    #@9b
    .line 1325
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@9d
    check-cast v0, Landroid/net/Uri;

    #@9f
    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@a2
    goto/16 :goto_0

    #@a4
    :cond_2
    move v1, v2

    #@a5
    .line 1323
    goto :goto_2

    #@a6
    .line 1329
    :pswitch_b
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@a8
    if-eqz v0, :cond_3

    #@aa
    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@ad
    .line 1330
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@af
    if-eqz v0, :cond_0

    #@b1
    .line 1331
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@b3
    check-cast v0, Landroid/graphics/Bitmap;

    #@b5
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    #@b8
    goto/16 :goto_0

    #@ba
    :cond_3
    move v1, v2

    #@bb
    .line 1329
    goto :goto_3

    #@bc
    .line 1335
    :pswitch_c
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@be
    check-cast v0, Landroid/os/Bundle;

    #@c0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@c3
    goto/16 :goto_0

    #@c5
    .line 1338
    :pswitch_d
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@c7
    if-eqz v0, :cond_4

    #@c9
    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@cc
    .line 1339
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@ce
    if-eqz v0, :cond_0

    #@d0
    .line 1340
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@d2
    check-cast v0, Landroid/content/Intent;

    #@d4
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@d7
    goto/16 :goto_0

    #@d9
    :cond_4
    move v1, v2

    #@da
    .line 1338
    goto :goto_4

    #@db
    .line 1344
    :pswitch_e
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@dd
    if-eqz v0, :cond_5

    #@df
    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@e2
    .line 1345
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@e4
    if-eqz v0, :cond_0

    #@e6
    .line 1346
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@e8
    check-cast v0, Landroid/content/res/ColorStateList;

    #@ea
    invoke-virtual {v0, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    #@ed
    goto/16 :goto_0

    #@ef
    :cond_5
    move v1, v2

    #@f0
    .line 1344
    goto :goto_5

    #@f1
    .line 1350
    :pswitch_f
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@f3
    if-eqz v0, :cond_6

    #@f5
    :goto_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@f8
    .line 1351
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@fa
    if-eqz v0, :cond_0

    #@fc
    .line 1352
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    #@fe
    check-cast v0, Landroid/graphics/drawable/Icon;

    #@100
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    #@103
    goto/16 :goto_0

    #@105
    :cond_6
    move v1, v2

    #@106
    .line 1350
    goto :goto_6

    #@107
    .line 1291
    nop

    #@108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
