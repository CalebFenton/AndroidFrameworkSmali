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
.field final synthetic blacklist this$0:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V
    .registers 3
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 341
    iput-object p1, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    .line 342
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 343
    return-void
.end method


# virtual methods
.method protected whitelist onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 14
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, "lookupUri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 349
    .local v1, "createUri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 350
    .local v2, "trigger":Z
    if-eqz p2, :cond_9

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    goto :goto_e

    :cond_9
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 352
    .local v3, "extras":Landroid/os/Bundle;
    :goto_e
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "uri_content"

    packed-switch p1, :pswitch_data_bc

    goto :goto_67

    .line 354
    :pswitch_18
    const/4 v2, 0x1

    .line 355
    :try_start_19
    const-string/jumbo v8, "tel"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v1, v5

    goto :goto_35

    .line 368
    :pswitch_26
    const/4 v2, 0x1

    .line 369
    const-string v8, "mailto"

    .line 370
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 369
    invoke-static {v8, v9, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v1, v5

    goto :goto_4b

    .line 383
    :catchall_33
    move-exception v4

    goto :goto_61

    .line 359
    :goto_35
    :pswitch_35
    if-eqz p3, :cond_67

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_67

    .line 360
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 361
    .local v5, "contactId":J
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 362
    .local v4, "lookupKey":Ljava/lang/String;
    invoke-static {v5, v6, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    move-object v0, v8

    .line 363
    .end local v4    # "lookupKey":Ljava/lang/String;
    .end local v5    # "contactId":J
    goto :goto_67

    .line 374
    :goto_4b
    :pswitch_4b
    if-eqz p3, :cond_67

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_67

    .line 375
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 376
    .restart local v5    # "contactId":J
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 377
    .restart local v4    # "lookupKey":Ljava/lang/String;
    invoke-static {v5, v6, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v8
    :try_end_5f
    .catchall {:try_start_19 .. :try_end_5f} :catchall_33

    move-object v0, v8

    goto :goto_67

    .line 383
    .end local v4    # "lookupKey":Ljava/lang/String;
    .end local v5    # "contactId":J
    :goto_61
    if-eqz p3, :cond_66

    .line 384
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 386
    :cond_66
    throw v4

    .line 383
    :cond_67
    :goto_67
    if-eqz p3, :cond_6c

    .line 384
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 388
    :cond_6c
    iget-object v4, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v4, v0}, Landroid/widget/QuickContactBadge;->-$$Nest$fputmContactUri(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)V

    .line 389
    iget-object v4, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v4}, Landroid/widget/QuickContactBadge;->-$$Nest$monContactUriChanged(Landroid/widget/QuickContactBadge;)V

    .line 391
    if-eqz v2, :cond_9c

    iget-object v4, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v4}, Landroid/widget/QuickContactBadge;->-$$Nest$fgetmContactUri(Landroid/widget/QuickContactBadge;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_9c

    .line 393
    iget-object v4, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    iget-object v6, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v6}, Landroid/widget/QuickContactBadge;->-$$Nest$fgetmContactUri(Landroid/widget/QuickContactBadge;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    iget-object v7, v7, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    iget-object v8, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v8}, Landroid/widget/QuickContactBadge;->-$$Nest$fgetmPrioritizedMimeType(Landroid/widget/QuickContactBadge;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v5, v6, v7, v8}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bb

    .line 395
    :cond_9c
    if-eqz v1, :cond_bb

    .line 397
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v4, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 398
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_b2

    .line 399
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 400
    .local v5, "bundle":Landroid/os/Bundle;
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v4, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 403
    .end local v5    # "bundle":Landroid/os/Bundle;
    :cond_b2
    iget-object v5, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 405
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_bb
    :goto_bb
    return-void

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_35
        :pswitch_26
        :pswitch_18
    .end packed-switch
.end method
