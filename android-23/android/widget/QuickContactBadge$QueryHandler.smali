.class Landroid/widget/QuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/QuickContactBadge;
    .param p2, "cr"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    .line 331
    iput-object p1, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #@2
    .line 332
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    #@5
    .line 331
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 15
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 337
    const/4 v8, 0x0

    #@1
    .line 338
    .local v8, "lookupUri":Landroid/net/Uri;
    const/4 v4, 0x0

    #@2
    .line 339
    .local v4, "createUri":Landroid/net/Uri;
    const/4 v9, 0x0

    #@3
    .line 340
    .local v9, "trigger":Z
    if-eqz p2, :cond_3

    #@5
    move-object/from16 v5, p2

    #@7
    check-cast v5, Landroid/os/Bundle;

    #@9
    .line 342
    .local v5, "extras":Landroid/os/Bundle;
    :goto_0
    packed-switch p1, :pswitch_data_0

    #@c
    .line 373
    .end local v4    # "createUri":Landroid/net/Uri;
    .end local v8    # "lookupUri":Landroid/net/Uri;
    :cond_0
    :goto_1
    if-eqz p3, :cond_1

    #@e
    .line 374
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    #@11
    .line 378
    :cond_1
    iget-object v10, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #@13
    invoke-static {v10, v8}, Landroid/widget/QuickContactBadge;->-set0(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;

    #@16
    .line 379
    iget-object v10, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #@18
    invoke-static {v10}, Landroid/widget/QuickContactBadge;->-wrap0(Landroid/widget/QuickContactBadge;)V

    #@1b
    .line 381
    if-eqz v9, :cond_5

    #@1d
    iget-object v10, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #@1f
    invoke-static {v10}, Landroid/widget/QuickContactBadge;->-get0(Landroid/widget/QuickContactBadge;)Landroid/net/Uri;

    #@22
    move-result-object v10

    #@23
    if-eqz v10, :cond_5

    #@25
    .line 383
    iget-object v10, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #@27
    invoke-virtual {v10}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    #@2a
    move-result-object v10

    #@2b
    iget-object v11, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #@2d
    iget-object v12, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #@2f
    invoke-static {v12}, Landroid/widget/QuickContactBadge;->-get0(Landroid/widget/QuickContactBadge;)Landroid/net/Uri;

    #@32
    move-result-object v12

    #@33
    .line 384
    iget-object v13, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #@35
    iget-object v13, v13, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    #@37
    iget-object v14, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #@39
    invoke-static {v14}, Landroid/widget/QuickContactBadge;->-get1(Landroid/widget/QuickContactBadge;)Ljava/lang/String;

    #@3c
    move-result-object v14

    #@3d
    .line 383
    invoke-static {v10, v11, v12, v13, v14}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    #@40
    .line 336
    :cond_2
    :goto_2
    return-void

    #@41
    .line 340
    .end local v5    # "extras":Landroid/os/Bundle;
    .restart local v4    # "createUri":Landroid/net/Uri;
    .restart local v8    # "lookupUri":Landroid/net/Uri;
    :cond_3
    new-instance v5, Landroid/os/Bundle;

    #@43
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    #@46
    .restart local v5    # "extras":Landroid/os/Bundle;
    goto :goto_0

    #@47
    .line 344
    :pswitch_0
    const/4 v9, 0x1

    #@48
    .line 345
    :try_start_0
    const-string/jumbo v10, "tel"

    #@4b
    const-string/jumbo v11, "uri_content"

    #@4e
    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@51
    move-result-object v11

    #@52
    const/4 v12, 0x0

    #@53
    invoke-static {v10, v11, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@56
    move-result-object v4

    #@57
    .line 349
    .end local v4    # "createUri":Landroid/net/Uri;
    :pswitch_1
    if-eqz p3, :cond_0

    #@59
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    #@5c
    move-result v10

    #@5d
    if-eqz v10, :cond_0

    #@5f
    .line 350
    const/4 v10, 0x0

    #@60
    move-object/from16 v0, p3

    #@62
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    #@65
    move-result-wide v2

    #@66
    .line 351
    .local v2, "contactId":J
    const/4 v10, 0x1

    #@67
    move-object/from16 v0, p3

    #@69
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@6c
    move-result-object v7

    #@6d
    .line 352
    .local v7, "lookupKey":Ljava/lang/String;
    invoke-static {v2, v3, v7}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    #@70
    move-result-object v8

    #@71
    .local v8, "lookupUri":Landroid/net/Uri;
    goto :goto_1

    #@72
    .line 358
    .end local v2    # "contactId":J
    .end local v7    # "lookupKey":Ljava/lang/String;
    .restart local v4    # "createUri":Landroid/net/Uri;
    .local v8, "lookupUri":Landroid/net/Uri;
    :pswitch_2
    const/4 v9, 0x1

    #@73
    .line 359
    const-string/jumbo v10, "mailto"

    #@76
    .line 360
    const-string/jumbo v11, "uri_content"

    #@79
    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@7c
    move-result-object v11

    #@7d
    const/4 v12, 0x0

    #@7e
    .line 359
    invoke-static {v10, v11, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@81
    move-result-object v4

    #@82
    .line 364
    .end local v4    # "createUri":Landroid/net/Uri;
    :pswitch_3
    if-eqz p3, :cond_0

    #@84
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    #@87
    move-result v10

    #@88
    if-eqz v10, :cond_0

    #@8a
    .line 365
    const/4 v10, 0x0

    #@8b
    move-object/from16 v0, p3

    #@8d
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    #@90
    move-result-wide v2

    #@91
    .line 366
    .restart local v2    # "contactId":J
    const/4 v10, 0x1

    #@92
    move-object/from16 v0, p3

    #@94
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@97
    move-result-object v7

    #@98
    .line 367
    .restart local v7    # "lookupKey":Ljava/lang/String;
    invoke-static {v2, v3, v7}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9b
    move-result-object v8

    #@9c
    .local v8, "lookupUri":Landroid/net/Uri;
    goto/16 :goto_1

    #@9e
    .line 372
    .end local v2    # "contactId":J
    .end local v7    # "lookupKey":Ljava/lang/String;
    .local v8, "lookupUri":Landroid/net/Uri;
    :catchall_0
    move-exception v10

    #@9f
    .line 373
    if-eqz p3, :cond_4

    #@a1
    .line 374
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    #@a4
    .line 372
    :cond_4
    throw v10

    #@a5
    .line 385
    .end local v8    # "lookupUri":Landroid/net/Uri;
    :cond_5
    if-eqz v4, :cond_2

    #@a7
    .line 387
    new-instance v6, Landroid/content/Intent;

    #@a9
    const-string/jumbo v10, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    #@ac
    invoke-direct {v6, v10, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@af
    .line 388
    .local v6, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_6

    #@b1
    .line 389
    const-string/jumbo v10, "uri_content"

    #@b4
    invoke-virtual {v5, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@b7
    .line 390
    invoke-virtual {v6, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@ba
    .line 392
    :cond_6
    iget-object v10, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #@bc
    invoke-virtual {v10}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    #@bf
    move-result-object v10

    #@c0
    invoke-virtual {v10, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@c3
    goto/16 :goto_2

    #@c5
    .line 342
    nop

    #@c6
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
